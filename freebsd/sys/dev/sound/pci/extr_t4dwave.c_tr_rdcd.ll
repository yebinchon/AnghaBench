; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_info = type { i32, i32, i32 }

@SPA_REG_CODECRD = common dso_local global i32 0, align 4
@SPA_CDC_RWSTAT = common dso_local global i32 0, align 4
@TDX_REG_CODECWR = common dso_local global i32 0, align 4
@TDX_REG_CODECRD = common dso_local global i32 0, align 4
@TDX_CDC_RWSTAT = common dso_local global i32 0, align 4
@TNX_REG_CODEC2RD = common dso_local global i32 0, align 4
@TNX_REG_CODEC1RD = common dso_local global i32 0, align 4
@TNX_CDC_RWSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"!!! tr_rdcd defaulted !!!\0A\00", align 1
@TR_TIMEOUT_CDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"codec timeout during read of register %x\0A\00", align 1
@TR_CDC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @tr_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.tr_info*
  store %struct.tr_info* %16, %struct.tr_info** %8, align 8
  %17 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %18 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %48 [
    i32 130, label %20
    i32 131, label %23
    i32 129, label %34
    i32 128, label %37
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @SPA_REG_CODECRD, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @SPA_CDC_RWSTAT, align 4
  store i32 %22, i32* %12, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %25 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @TDX_REG_CODECWR, align 4
  store i32 %29, i32* %11, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @TDX_REG_CODECRD, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @TDX_CDC_RWSTAT, align 4
  store i32 %33, i32* %12, align 4
  br label %50

34:                                               ; preds = %3
  %35 = load i32, i32* @TDX_REG_CODECRD, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @TDX_CDC_RWSTAT, align 4
  store i32 %36, i32* %12, align 4
  br label %50

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 256
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @TNX_REG_CODEC2RD, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @TNX_REG_CODEC1RD, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @TNX_CDC_RWSTAT, align 4
  store i32 %47, i32* %12, align 4
  br label %50

48:                                               ; preds = %3
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %159

50:                                               ; preds = %45, %34, %32, %20
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 127
  store i32 %52, i32* %7, align 4
  %53 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %54 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_mtxlock(i32 %55)
  %57 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %58 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 131
  br i1 %60, label %61, label %108

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @TR_TIMEOUT_CDC, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %79, %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ false, %64 ], [ %71, %67 ]
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i8* @tr_rd(%struct.tr_info* %75, i32 %76, i32 4)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  br label %64

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %87 = call i8* @tr_rd(%struct.tr_info* %86, i32 200, i32 4)
  store i8* %87, i8** %13, align 8
  %88 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %89 = call i8* @tr_rd(%struct.tr_info* %88, i32 200, i32 4)
  store i8* %89, i8** %14, align 8
  %90 = load i32, i32* @TR_TIMEOUT_CDC, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %103, %85
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp eq i8* %95, %96
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i1 [ false, %91 ], [ %97, %94 ]
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %102 = call i8* @tr_rd(%struct.tr_info* %101, i32 200, i32 4)
  store i8* %102, i8** %14, align 8
  br label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %9, align 4
  br label %91

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107, %50
  %109 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %110 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 131
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %113, %108
  %117 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @tr_wr(%struct.tr_info* %117, i32 %118, i32 %121, i32 4)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* @TR_TIMEOUT_CDC, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %140, %116
  %126 = load i32, i32* %9, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ %132, %128 ]
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i8* @tr_rd(%struct.tr_info* %136, i32 %137, i32 4)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %9, align 4
  br label %125

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %113
  %145 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  %146 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @snd_mtxunlock(i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %151, %144
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @TR_CDC_DATA, align 4
  %157 = ashr i32 %155, %156
  %158 = and i32 %157, 65535
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %154, %48
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i8* @tr_rd(%struct.tr_info*, i32, i32) #1

declare dso_local i32 @tr_wr(%struct.tr_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
