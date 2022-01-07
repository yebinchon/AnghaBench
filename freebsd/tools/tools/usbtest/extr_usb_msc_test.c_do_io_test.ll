; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_do_io_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_do_io_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i64 }
%struct.usb_msc_params = type { i32, i32, i32, i32, i64, i32 }

@xfer_current_id = common dso_local global i32 0, align 4
@block_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Data comparison failure\0A\00", align 1
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Maximum number of errors exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_msc_params*, i32, i32, i32*, i32*)* @do_io_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_io_test(%struct.usb_msc_params* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.usb_msc_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_msc_params* %0, %struct.usb_msc_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.usb_msc_params*, %struct.usb_msc_params** %6, align 8
  %17 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %23 [
    i32 142, label %19
    i32 143, label %20
  ]

19:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %24

20:                                               ; preds = %5
  %21 = call i32 (...) @usb_ts_rand_noise()
  %22 = and i32 %21, 1
  store i32 %22, i32* %14, align 4
  br label %24

23:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %24

24:                                               ; preds = %23, %20, %19
  %25 = load %struct.usb_msc_params*, %struct.usb_msc_params** %6, align 8
  %26 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %30 [
    i32 141, label %28
  ]

28:                                               ; preds = %24
  %29 = call i32 (...) @usb_ts_rand_noise()
  store i32 %29, i32* %11, align 4
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load %struct.usb_msc_params*, %struct.usb_msc_params** %6, align 8
  %33 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %47 [
    i32 144, label %35
    i32 145, label %39
    i32 146, label %43
    i32 147, label %45
  ]

35:                                               ; preds = %31
  %36 = call i32 (...) @usb_ts_rand_noise()
  %37 = urem i32 %36, 10000
  %38 = call i32 @usleep(i32 %37)
  br label %48

39:                                               ; preds = %31
  %40 = call i32 (...) @usb_ts_rand_noise()
  %41 = urem i32 %40, 100000
  %42 = call i32 @usleep(i32 %41)
  br label %48

43:                                               ; preds = %31
  %44 = call i32 @usleep(i32 10000)
  br label %48

45:                                               ; preds = %31
  %46 = call i32 @usleep(i32 100000)
  br label %48

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %45, %43, %39, %35
  %49 = load %struct.usb_msc_params*, %struct.usb_msc_params** %6, align 8
  %50 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %69 [
    i32 128, label %52
    i32 129, label %55
    i32 137, label %58
    i32 135, label %59
    i32 133, label %60
    i32 130, label %61
    i32 138, label %62
    i32 134, label %63
    i32 131, label %64
    i32 139, label %65
    i32 136, label %66
    i32 132, label %67
    i32 140, label %68
  ]

52:                                               ; preds = %48
  %53 = call i32 (...) @usb_ts_rand_noise()
  %54 = and i32 %53, 65535
  store i32 %54, i32* %12, align 4
  br label %70

55:                                               ; preds = %48
  %56 = load i32, i32* @xfer_current_id, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %12, align 4
  br label %70

58:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %70

59:                                               ; preds = %48
  store i32 2, i32* %12, align 4
  br label %70

60:                                               ; preds = %48
  store i32 4, i32* %12, align 4
  br label %70

61:                                               ; preds = %48
  store i32 8, i32* %12, align 4
  br label %70

62:                                               ; preds = %48
  store i32 16, i32* %12, align 4
  br label %70

63:                                               ; preds = %48
  store i32 32, i32* %12, align 4
  br label %70

64:                                               ; preds = %48
  store i32 64, i32* %12, align 4
  br label %70

65:                                               ; preds = %48
  store i32 128, i32* %12, align 4
  br label %70

66:                                               ; preds = %48
  store i32 256, i32* %12, align 4
  br label %70

67:                                               ; preds = %48
  store i32 512, i32* %12, align 4
  br label %70

68:                                               ; preds = %48
  store i32 1024, i32* %12, align 4
  br label %70

69:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %55, %52
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = urem i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %78, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %74
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @block_size, align 4
  %93 = mul i32 %91, %92
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @block_size, align 4
  %97 = mul i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @do_read_10(i32 %90, i32 %93, i32* %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %89
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @block_size, align 4
  %108 = mul i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @block_size, align 4
  %114 = mul i32 %112, %113
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @block_size, align 4
  %119 = mul i32 %117, %118
  %120 = call i64 @bcmp(i32* %110, i32* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %104
  %123 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 8
  store i32 1, i32* %15, align 4
  br label %126

126:                                              ; preds = %122, %104
  br label %127

127:                                              ; preds = %126, %89
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @block_size, align 4
  %130 = mul i32 %128, %129
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 8
  %132 = add i32 %131, %130
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 8
  br label %151

133:                                              ; preds = %86
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @block_size, align 4
  %137 = mul i32 %135, %136
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @block_size, align 4
  %141 = mul i32 %139, %140
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @do_write_10(i32 %134, i32 %137, i32* %143, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @block_size, align 4
  %148 = mul i32 %146, %147
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 4
  br label %151

151:                                              ; preds = %133, %127
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 3), align 8
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 8
  %154 = add nsw i64 %152, %153
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 4), align 8
  %156 = add nsw i64 %154, %155
  %157 = load %struct.usb_msc_params*, %struct.usb_msc_params** %6, align 8
  %158 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %163 = load %struct.usb_msc_params*, %struct.usb_msc_params** %6, align 8
  %164 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %163, i32 0, i32 5
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %151
  ret void
}

declare dso_local i32 @usb_ts_rand_noise(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @do_read_10(i32, i32, i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @do_write_10(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
