; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_wrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_info = type { i32, i32, i32 }

@SPA_REG_CODECWR = common dso_local global i32 0, align 4
@SPA_CDC_RWSTAT = common dso_local global i32 0, align 4
@TDX_REG_CODECWR = common dso_local global i32 0, align 4
@TDX_CDC_RWSTAT = common dso_local global i32 0, align 4
@TNX_REG_CODECWR = common dso_local global i32 0, align 4
@TNX_CDC_RWSTAT = common dso_local global i32 0, align 4
@TNX_CDC_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"!!! tr_wrcd defaulted !!!\00", align 1
@TR_TIMEOUT_CDC = common dso_local global i32 0, align 4
@TR_CDC_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"codec timeout writing %x, data %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @tr_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_wrcd(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tr_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.tr_info*
  store %struct.tr_info* %18, %struct.tr_info** %10, align 8
  %19 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %20 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %40 [
    i32 130, label %22
    i32 131, label %25
    i32 129, label %25
    i32 128, label %28
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* @SPA_REG_CODECWR, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @SPA_CDC_RWSTAT, align 4
  store i32 %24, i32* %14, align 4
  br label %42

25:                                               ; preds = %4, %4
  %26 = load i32, i32* @TDX_REG_CODECWR, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @TDX_CDC_RWSTAT, align 4
  store i32 %27, i32* %14, align 4
  br label %42

28:                                               ; preds = %4
  %29 = load i32, i32* @TNX_REG_CODECWR, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @TNX_CDC_RWSTAT, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @TNX_CDC_SEC, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %30, %38
  store i32 %39, i32* %14, align 4
  br label %42

40:                                               ; preds = %4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %167

42:                                               ; preds = %37, %25, %22
  store i32 0, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 127
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %47 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_mtxlock(i32 %48)
  %50 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %51 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %100

54:                                               ; preds = %42
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @TR_TIMEOUT_CDC, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %71, %54
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @tr_rd(%struct.tr_info* %68, i32 %69, i32 4)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %11, align 4
  br label %57

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %79 = call i32 @tr_rd(%struct.tr_info* %78, i32 200, i32 4)
  store i32 %79, i32* %15, align 4
  %80 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %81 = call i32 @tr_rd(%struct.tr_info* %80, i32 200, i32 4)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* @TR_TIMEOUT_CDC, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %95, %77
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %87, %88
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %98

92:                                               ; preds = %90
  %93 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %94 = call i32 @tr_rd(%struct.tr_info* %93, i32 200, i32 4)
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  br label %83

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %42
  %101 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %102 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 131
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %105, %100
  %109 = load i32, i32* @TR_TIMEOUT_CDC, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %124, %108
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %14, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %113, %110
  %119 = phi i1 [ false, %110 ], [ %117, %113 ]
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @tr_rd(%struct.tr_info* %121, i32 %122, i32 4)
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %11, align 4
  br label %110

127:                                              ; preds = %118
  %128 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %129 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 131
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %134 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, 256
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %132, %127
  %141 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @TR_CDC_DATA, align 4
  %145 = shl i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @tr_wr(%struct.tr_info* %141, i32 %142, i32 %149, i32 4)
  br label %151

151:                                              ; preds = %140, %105
  %152 = load %struct.tr_info*, %struct.tr_info** %10, align 8
  %153 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @snd_mtxunlock(i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %151
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 0, i32 -1
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %162, %40
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @tr_rd(%struct.tr_info*, i32, i32) #1

declare dso_local i32 @tr_wr(%struct.tr_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
