; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_copyback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_copyback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, %struct.mbuf*, i32 }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_copyback(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %13, %struct.mbuf** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = icmp eq %struct.mbuf* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %180

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %61, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 3
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %34 = icmp eq %struct.mbuf* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %24
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.mbuf* @m_get(i32 %36, i32 %39)
  store %struct.mbuf* %40, %struct.mbuf** %11, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %161

44:                                               ; preds = %35
  %45 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %46 = load i32, i32* @caddr_t, align 4
  %47 = call i64 @mtod(%struct.mbuf* %45, i32 %46)
  %48 = load i32, i32* @MLEN, align 4
  %49 = call i32 @bzero(i64 %47, i32 %48)
  %50 = load i32, i32* @MLEN, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i8* @min(i32 %50, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 3
  store %struct.mbuf* %58, %struct.mbuf** %60, align 8
  br label %61

61:                                               ; preds = %44, %24
  %62 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 3
  %64 = load %struct.mbuf*, %struct.mbuf** %63, align 8
  store %struct.mbuf* %64, %struct.mbuf** %10, align 8
  br label %18

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %156, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %160

69:                                               ; preds = %66
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 3
  %72 = load %struct.mbuf*, %struct.mbuf** %71, align 8
  %73 = icmp eq %struct.mbuf* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp sgt i32 %75, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 %83, %88
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %90)
  %92 = call i8* @min(i32 %89, i32 %91)
  %93 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %92, i64 %96
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %94, align 8
  br label %99

99:                                               ; preds = %82, %74, %69
  %100 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %7, align 4
  %106 = call i8* @min(i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %112 = load i32, i32* @caddr_t, align 4
  %113 = call i64 @mtod(%struct.mbuf* %111, i32 %112)
  %114 = add nsw i64 %110, %113
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @bcopy(i32 %108, i64 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %99
  br label %160

132:                                              ; preds = %99
  %133 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 3
  %135 = load %struct.mbuf*, %struct.mbuf** %134, align 8
  %136 = icmp eq %struct.mbuf* %135, null
  br i1 %136, label %137, label %156

137:                                              ; preds = %132
  %138 = load i32, i32* @M_NOWAIT, align 4
  %139 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.mbuf* @m_get(i32 %138, i32 %141)
  store %struct.mbuf* %142, %struct.mbuf** %11, align 8
  %143 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %144 = icmp eq %struct.mbuf* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %160

146:                                              ; preds = %137
  %147 = load i32, i32* @MLEN, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i8* @min(i32 %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %152 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %154 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 3
  store %struct.mbuf* %153, %struct.mbuf** %155, align 8
  br label %156

156:                                              ; preds = %146, %132
  %157 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 3
  %159 = load %struct.mbuf*, %struct.mbuf** %158, align 8
  store %struct.mbuf* %159, %struct.mbuf** %10, align 8
  br label %66

160:                                              ; preds = %145, %131, %66
  br label %161

161:                                              ; preds = %160, %43
  %162 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %162, %struct.mbuf** %10, align 8
  %163 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @M_PKTHDR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %161
  %169 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %178 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  br label %180

180:                                              ; preds = %16, %175, %168, %161
  ret void
}

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
