; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_copym.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_copym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.mbuf*, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"m_copym, negative off %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"m_copym, negative len %d\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"m_copym, offset > size of mbuf chain\00", align 1
@M_COPYALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"m_copym, length > size of mbuf chain\00", align 1
@M_EXT = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_copym(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @MBUF_CHECKSLEEP(i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_PKTHDR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %34, %4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %66

57:                                               ; preds = %46
  %58 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 2
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  store %struct.mbuf* %65, %struct.mbuf** %6, align 8
  br label %43

66:                                               ; preds = %56, %43
  store %struct.mbuf** %13, %struct.mbuf*** %11, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  br label %67

67:                                               ; preds = %179, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %185

70:                                               ; preds = %67
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = icmp eq %struct.mbuf* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @M_COPYALL, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %185

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.mbuf* @m_gethdr(i32 %83, i32 %86)
  store %struct.mbuf* %87, %struct.mbuf** %10, align 8
  br label %94

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.mbuf* @m_get(i32 %89, i32 %92)
  store %struct.mbuf* %93, %struct.mbuf** %10, align 8
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %96 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  store %struct.mbuf* %95, %struct.mbuf** %96, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %98 = icmp eq %struct.mbuf* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %187

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @m_dup_pkthdr(%struct.mbuf* %104, %struct.mbuf* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %187

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @M_COPYALL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, %115
  store i32 %120, i32* %118, align 8
  br label %126

121:                                              ; preds = %110
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %121, %114
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %126, %100
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i32 @min(i32 %128, i32 %133)
  %135 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %138 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @M_EXT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %127
  %144 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %153 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %154 = call i32 @mb_dupcl(%struct.mbuf* %152, %struct.mbuf* %153)
  br label %169

155:                                              ; preds = %127
  %156 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %157 = load i32, i32* @caddr_t, align 4
  %158 = call i64 @mtod(%struct.mbuf* %156, i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %163 = load i32, i32* @caddr_t, align 4
  %164 = call i64 @mtod(%struct.mbuf* %162, i32 %163)
  %165 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @bcopy(i64 %161, i64 %164, i32 %167)
  br label %169

169:                                              ; preds = %155, %143
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @M_COPYALL, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %175 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %173, %169
  store i32 0, i32* %12, align 4
  %180 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %181 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %180, i32 0, i32 2
  %182 = load %struct.mbuf*, %struct.mbuf** %181, align 8
  store %struct.mbuf* %182, %struct.mbuf** %6, align 8
  %183 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %184 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %183, i32 0, i32 2
  store %struct.mbuf** %184, %struct.mbuf*** %11, align 8
  br label %67

185:                                              ; preds = %73, %67
  %186 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %186, %struct.mbuf** %5, align 8
  br label %190

187:                                              ; preds = %109, %99
  %188 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %189 = call i32 @m_freem(%struct.mbuf* %188)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %190

190:                                              ; preds = %187, %185
  %191 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %191
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MBUF_CHECKSLEEP(i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @m_dup_pkthdr(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mb_dupcl(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
