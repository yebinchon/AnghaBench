; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_atu_mac_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_atu_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atu_opt = type { i32, i32, i32, i32 }

@NO_OPERATION = common dso_local global i32 0, align 4
@LOAD_FROM_FIB = common dso_local global i32 0, align 4
@PURGE_FROM_FIB = common dso_local global i32 0, align 4
@GET_NEXT_IN_FIB = common dso_local global i32 0, align 4
@GET_VIOLATION_DATA = common dso_local global i32 0, align 4
@CLEAR_VIOLATION_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Wrong Opcode for ATU operation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATU_OPERATION = common dso_local global i32 0, align 4
@ATU_UNIT_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ATU unit is busy, cannot access\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@ATU_DATA = common dso_local global i32 0, align 4
@REG_GLOBAL2 = common dso_local global i32 0, align 4
@ENTRY_STATE = common dso_local global i32 0, align 4
@ATU_MAC_ADDR01 = common dso_local global i32 0, align 4
@ATU_MAC_ADDR23 = common dso_local global i32 0, align 4
@ATU_MAC_ADDR45 = common dso_local global i32 0, align 4
@ATU_FID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Timeout while waiting ATU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.atu_opt*, i32)* @e6000sw_atu_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_atu_mac_table(i32 %0, i32* %1, %struct.atu_opt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atu_opt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.atu_opt* %2, %struct.atu_opt** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @NO_OPERATION, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %143

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @LOAD_FROM_FIB, align 4
  %19 = load i32, i32* @PURGE_FROM_FIB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GET_NEXT_IN_FIB, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GET_VIOLATION_DATA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CLEAR_VIOLATION_DATA, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %17, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %143

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ATU_OPERATION, align 4
  %37 = load i32, i32* @ATU_UNIT_BUSY, align 4
  %38 = call i64 @E6000SW_WAITREADY(i32* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %5, align 4
  br label %143

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @REG_GLOBAL, align 4
  %47 = load i32, i32* @ATU_OPERATION, align 4
  %48 = call i8* @e6000sw_readreg(i32* %45, i32 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @LOAD_FROM_FIB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @REG_GLOBAL, align 4
  %57 = load i32, i32* @ATU_DATA, align 4
  %58 = call i8* @e6000sw_readreg(i32* %55, i32 %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @REG_GLOBAL2, align 4
  %62 = load i32, i32* @ATU_DATA, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ENTRY_STATE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @e6000sw_writereg(i32* %60, i32 %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %54, %44
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @REG_GLOBAL, align 4
  %71 = load i32, i32* @ATU_MAC_ADDR01, align 4
  %72 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %73 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @e6000sw_writereg(i32* %69, i32 %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @REG_GLOBAL, align 4
  %78 = load i32, i32* @ATU_MAC_ADDR23, align 4
  %79 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %80 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @e6000sw_writereg(i32* %76, i32 %77, i32 %78, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @REG_GLOBAL, align 4
  %85 = load i32, i32* @ATU_MAC_ADDR45, align 4
  %86 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %87 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @e6000sw_writereg(i32* %83, i32 %84, i32 %85, i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @REG_GLOBAL, align 4
  %92 = load i32, i32* @ATU_FID, align 4
  %93 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %94 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @e6000sw_writereg(i32* %90, i32 %91, i32 %92, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @REG_GLOBAL, align 4
  %99 = load i32, i32* @ATU_OPERATION, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ATU_UNIT_BUSY, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @e6000sw_writereg(i32* %97, i32 %98, i32 %99, i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @ATU_OPERATION, align 4
  %108 = load i32, i32* @ATU_UNIT_BUSY, align 4
  %109 = call i64 @E6000SW_WAITREADY(i32* %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %68
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %142

114:                                              ; preds = %68
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @GET_NEXT_IN_FIB, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* @REG_GLOBAL, align 4
  %122 = load i32, i32* @ATU_MAC_ADDR01, align 4
  %123 = call i8* @e6000sw_readreg(i32* %120, i32 %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %126 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @REG_GLOBAL, align 4
  %129 = load i32, i32* @ATU_MAC_ADDR23, align 4
  %130 = call i8* @e6000sw_readreg(i32* %127, i32 %128, i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %133 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* @REG_GLOBAL, align 4
  %136 = load i32, i32* @ATU_MAC_ADDR45, align 4
  %137 = call i8* @e6000sw_readreg(i32* %134, i32 %135, i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.atu_opt*, %struct.atu_opt** %8, align 8
  %140 = getelementptr inbounds %struct.atu_opt, %struct.atu_opt* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %119, %114
  br label %142

142:                                              ; preds = %141, %111
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %40, %29, %15
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @E6000SW_WAITREADY(i32*, i32, i32) #1

declare dso_local i8* @e6000sw_readreg(i32*, i32, i32) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
