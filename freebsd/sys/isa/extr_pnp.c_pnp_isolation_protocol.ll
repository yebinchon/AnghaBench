; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_isolation_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_isolation_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PNP_CONFIG_CONTROL = common dso_local global i32 0, align 4
@PNP_CONFIG_CONTROL_RESET_CSN = common dso_local global i32 0, align 4
@PNP_WAKE = common dso_local global i32 0, align 4
@PNP_SET_RD_DATA = common dso_local global i32 0, align 4
@pnp_rd_port = common dso_local global i32 0, align 4
@PNP_MAX_CARDS = common dso_local global i32 0, align 4
@_PNP_ADDRESS = common dso_local global i32 0, align 4
@PNP_SERIAL_ISOLATION = common dso_local global i32 0, align 4
@PNP_SET_CSN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reading PnP configuration for %s.\0A\00", align 1
@PNP_CONFIG_CONTROL_WAIT_FOR_KEY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pnp_isolation_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_isolation_protocol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = call i32 (...) @pnp_send_initiation_key()
  %11 = load i32, i32* @PNP_CONFIG_CONTROL, align 4
  %12 = load i32, i32* @PNP_CONFIG_CONTROL_RESET_CSN, align 4
  %13 = call i32 @pnp_write(i32 %11, i32 %12)
  %14 = load i32, i32* @PNP_WAKE, align 4
  %15 = call i32 @pnp_write(i32 %14, i32 0)
  %16 = load i32, i32* @PNP_SET_RD_DATA, align 4
  %17 = load i32, i32* @pnp_rd_port, align 4
  %18 = call i32 @pnp_write(i32 %16, i32 %17)
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %58, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PNP_MAX_CARDS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load i32, i32* @_PNP_ADDRESS, align 4
  %25 = load i32, i32* @PNP_SERIAL_ISOLATION, align 4
  %26 = call i32 @outb(i32 %24, i32 %25)
  %27 = call i32 @DELAY(i32 1000)
  %28 = call i64 @pnp_get_serial(%struct.TYPE_4__* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = load i32, i32* @PNP_SET_CSN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pnp_write(i32 %31, i32 %32)
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @pnp_eisaformat(i32 %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = call i32 @pnp_read_resources(i32** %7, i32* %8, i32* %6)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %61

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pnp_create_devices(i32 %47, %struct.TYPE_4__* %4, i32 %48, i32* %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %23
  br label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @PNP_WAKE, align 4
  %57 = call i32 @pnp_write(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %19

61:                                               ; preds = %54, %45, %19
  %62 = load i32, i32* @PNP_CONFIG_CONTROL, align 4
  %63 = load i32, i32* @PNP_CONFIG_CONTROL_WAIT_FOR_KEY, align 4
  %64 = call i32 @pnp_write(i32 %62, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @M_TEMP, align 4
  %70 = call i32 @free(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @pnp_send_initiation_key(...) #1

declare dso_local i32 @pnp_write(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @pnp_get_serial(%struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @pnp_eisaformat(i32) #1

declare dso_local i32 @pnp_read_resources(i32**, i32*, i32*) #1

declare dso_local i32 @pnp_create_devices(i32, %struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
