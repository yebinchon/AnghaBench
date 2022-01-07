; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25l_softc = type { i32, i32, i32, i32, i32 }
%struct.spi_command = type { i32, i32, i32*, i32*, i8*, i8*, i32, i32 }

@FL_ENABLE_4B_ADDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CMD_PAGE_PROGRAM = common dso_local global i32 0, align 4
@FLASH_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx25l_softc*, i32, i32, i32)* @mx25l_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25l_write(%struct.mx25l_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mx25l_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca %struct.spi_command, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mx25l_softc* %0, %struct.mx25l_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %16 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FL_ENABLE_4B_ADDR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 0
  store i32 5, i32* %22, align 8
  %23 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 1
  store i32 5, i32* %23, align 4
  br label %27

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 1
  store i32 4, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %30 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %37 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %27
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %5, align 4
  br label %159

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %147, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %157

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %50 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mx25l_erase_cmd(%struct.mx25l_softc* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %157

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* @CMD_PAGE_PROGRAM, align 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  %65 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %66 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FL_ENABLE_4B_ADDR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 24
  %74 = and i32 %73, 255
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %85, i32* %86, align 16
  br label %99

87:                                               ; preds = %62
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 16
  %90 = and i32 %89, 255
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 255
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %87, %71
  %100 = load i32, i32* @FLASH_PAGE_SIZE, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @MIN(i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %104 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 2
  store i32* %103, i32** %104, align 8
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %106 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 3
  store i32* %105, i32** %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 7
  store i32 %107, i32* %108, align 4
  %109 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %110 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 6
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 5
  store i8* %115, i8** %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 4
  store i8* %119, i8** %120, align 8
  %121 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %122 = call i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc* %121)
  store i32 %122, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %99
  br label %157

125:                                              ; preds = %99
  %126 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %127 = call i32 @mx25l_set_writable(%struct.mx25l_softc* %126, i32 1)
  store i32 %127, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %157

130:                                              ; preds = %125
  %131 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %132 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %135 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @SPIBUS_TRANSFER(i32 %133, i32 %136, %struct.spi_command* %12)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %157

141:                                              ; preds = %130
  %142 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %143 = call i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc* %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %157

147:                                              ; preds = %141
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %44

157:                                              ; preds = %146, %140, %129, %124, %60, %44
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %41
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @mx25l_erase_cmd(%struct.mx25l_softc*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc*) #1

declare dso_local i32 @mx25l_set_writable(%struct.mx25l_softc*, i32) #1

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
