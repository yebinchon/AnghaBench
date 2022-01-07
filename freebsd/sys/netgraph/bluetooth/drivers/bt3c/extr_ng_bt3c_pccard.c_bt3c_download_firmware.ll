; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_download_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Reseting the card...\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Starting firmware download process...\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"Download firmware block, address=%#08x, size=%d words, aligment=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Firmware download process complete\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Starting the card...\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Clearing card registers...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i32)* @bt3c_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_download_firmware(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @bt3c_write(%struct.TYPE_10__* %16, i32 32832, i32 1028)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i32 @bt3c_write(%struct.TYPE_10__* %18, i32 32832, i32 1024)
  %20 = call i32 @DELAY(i32 1)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = call i32 @bt3c_write(%struct.TYPE_10__* %21, i32 32832, i32 1028)
  %23 = call i32 @DELAY(i32 17)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %80, %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 1
  %40 = bitcast %struct.TYPE_9__* %39 to i32*
  store i32* %40, i32** %8, align 8
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %43, %32
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bt3c_set_address(%struct.TYPE_10__* %58, i32 %61)
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %77, %57
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bt3c_write_data(%struct.TYPE_10__* %70, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = add i64 16, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  br label %28

95:                                               ; preds = %28
  %96 = call i32 @DELAY(i32 17)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = call i32 @bt3c_set_address(%struct.TYPE_10__* %105, i32 12288)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @bt3c_read_control(%struct.TYPE_10__* %107, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, 64
  %113 = call i32 @bt3c_write_control(%struct.TYPE_10__* %110, i32 %112)
  %114 = call i32 @DELAY(i32 17)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = call i32 @bt3c_write(%struct.TYPE_10__* %119, i32 28678, i32 0)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = call i32 @bt3c_write(%struct.TYPE_10__* %121, i32 28677, i32 0)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = call i32 @bt3c_write(%struct.TYPE_10__* %123, i32 28673, i32 0)
  %125 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bt3c_write(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bt3c_set_address(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bt3c_write_data(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bt3c_read_control(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bt3c_write_control(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
