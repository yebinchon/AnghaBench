; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_cred_check_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_cred_check_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }

@MAGIC_CRED = common dso_local global i32 0, align 4
@cred_check_visible = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*)* @test_cred_check_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cred_check_visible(%struct.ucred* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.ucred*, align 8
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %5 = load %struct.ucred*, %struct.ucred** %3, align 8
  %6 = getelementptr inbounds %struct.ucred, %struct.ucred* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAGIC_CRED, align 4
  %9 = call i32 @LABEL_CHECK(i32 %7, i32 %8)
  %10 = load %struct.ucred*, %struct.ucred** %4, align 8
  %11 = getelementptr inbounds %struct.ucred, %struct.ucred* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAGIC_CRED, align 4
  %14 = call i32 @LABEL_CHECK(i32 %12, i32 %13)
  %15 = load i32, i32* @cred_check_visible, align 4
  %16 = call i32 @COUNTER_INC(i32 %15)
  ret i32 0
}

declare dso_local i32 @LABEL_CHECK(i32, i32) #1

declare dso_local i32 @COUNTER_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
