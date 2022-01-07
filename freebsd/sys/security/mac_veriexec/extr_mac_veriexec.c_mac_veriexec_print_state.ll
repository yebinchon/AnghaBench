; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_print_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@mac_veriexec_state = common dso_local global i32 0, align 4
@VERIEXEC_STATE_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"inactive \00", align 1
@VERIEXEC_STATE_LOADED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"loaded \00", align 1
@VERIEXEC_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"active \00", align 1
@VERIEXEC_STATE_ENFORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"enforce \00", align 1
@VERIEXEC_STATE_LOCKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"locked \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*)* @mac_veriexec_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_veriexec_print_state(%struct.sbuf* %0) #0 {
  %2 = alloca %struct.sbuf*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %2, align 8
  %3 = load i32, i32* @mac_veriexec_state, align 4
  %4 = load i32, i32* @VERIEXEC_STATE_INACTIVE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %9 = call i32 @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @mac_veriexec_state, align 4
  %12 = load i32, i32* @VERIEXEC_STATE_LOADED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %17 = call i32 @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @mac_veriexec_state, align 4
  %20 = load i32, i32* @VERIEXEC_STATE_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %25 = call i32 @sbuf_printf(%struct.sbuf* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @mac_veriexec_state, align 4
  %28 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %33 = call i32 @sbuf_printf(%struct.sbuf* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @mac_veriexec_state, align 4
  %36 = load i32, i32* @VERIEXEC_STATE_LOCKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %41 = call i32 @sbuf_printf(%struct.sbuf* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* @mac_veriexec_state, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %47 = call i32 @sbuf_trim(%struct.sbuf* %46)
  br label %48

48:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_trim(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
