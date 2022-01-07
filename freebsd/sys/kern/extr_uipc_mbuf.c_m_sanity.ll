; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_sanity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32, %struct.TYPE_2__, %struct.mbuf*, i64, %struct.mbuf* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"mbuf %p: m_data outside mbuf data range left\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"mbuf %p: m_data outside mbuf data range right\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"mbuf %p: m_data + m_len exeeds mbuf space\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"mbuf %p: m->m_nextpkt on in-chain mbuf\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"mbuf %p: m_tags on in-chain mbuf\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"mbuf %p: M_PKTHDR on in-chain mbuf\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"mbuf %p: m_pkthdr.len != mbuf chain length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_sanity(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %9, %struct.mbuf** %5, align 8
  br label %10

10:                                               ; preds = %144, %2
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %148

13:                                               ; preds = %10
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = call i64 @M_START(%struct.mbuf* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = call i64 @M_SIZE(%struct.mbuf* %17)
  %19 = add nsw i64 %16, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.mbuf* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.mbuf* %48)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %53 = icmp ne %struct.mbuf* %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 3
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 3
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  %66 = call i32 @m_freem(%struct.mbuf* %65)
  %67 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 3
  store %struct.mbuf* inttoptr (i64 3735929054 to %struct.mbuf*), %struct.mbuf** %68, align 8
  br label %72

69:                                               ; preds = %59
  %70 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.mbuf* %70)
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %54, %50
  %74 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @M_PKTHDR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80, %73
  %89 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %91 = icmp ne %struct.mbuf* %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @M_PKTHDR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %92
  %100 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = call i32 @SLIST_EMPTY(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %110 = call i32 @m_tag_delete_chain(%struct.mbuf* %109, i32* null)
  br label %114

111:                                              ; preds = %105
  %112 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.mbuf* %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %99, %92, %88
  %116 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %117 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %118 = icmp ne %struct.mbuf* %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @M_PKTHDR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %119
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 2
  %132 = call i32 @bzero(%struct.TYPE_2__* %131, i32 8)
  %133 = load i32, i32* @M_PKTHDR, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %142

139:                                              ; preds = %126
  %140 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), %struct.mbuf* %140)
  br label %142

142:                                              ; preds = %139, %129
  br label %143

143:                                              ; preds = %142, %119, %115
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %146 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %145, i32 0, i32 5
  %147 = load %struct.mbuf*, %struct.mbuf** %146, align 8
  store %struct.mbuf* %147, %struct.mbuf** %5, align 8
  br label %10

148:                                              ; preds = %10
  %149 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %149, %struct.mbuf** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %153, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %152
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %164 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  br label %169

166:                                              ; preds = %159
  %167 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), %struct.mbuf* %167)
  br label %169

169:                                              ; preds = %166, %162
  br label %170

170:                                              ; preds = %169, %152, %148
  ret i32 1
}

declare dso_local i64 @M_START(%struct.mbuf*) #1

declare dso_local i64 @M_SIZE(%struct.mbuf*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @m_tag_delete_chain(%struct.mbuf*, i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
