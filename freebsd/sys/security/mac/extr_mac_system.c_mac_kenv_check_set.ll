; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_system.c_mac_kenv_check_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_system.c_mac_kenv_check_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }

@kenv_check_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_kenv_check_set(%struct.ucred* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @kenv_check_set, align 4
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %8, %struct.ucred* %9, i8* %10, i8* %11)
  %13 = load i32, i32* @kenv_check_set, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ucred*, %struct.ucred** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @MAC_CHECK_PROBE3(i32 %13, i32 %14, %struct.ucred* %15, i8* %16, i8* %17)
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ucred*, i8*, i8*) #1

declare dso_local i32 @MAC_CHECK_PROBE3(i32, i32, %struct.ucred*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
