; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEKeyChange.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEKeyChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mppe_state = type { i32, i32, i32 }

@MPPE_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mppe_state*)* @MPPEKeyChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MPPEKeyChange(%struct.mppe_state* %0) #0 {
  %2 = alloca %struct.mppe_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mppe_state* %0, %struct.mppe_state** %2, align 8
  %6 = load i32, i32* @MPPE_KEY_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %11 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %14 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %17 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GetNewKeyFromSHA(i32 %12, i32 %15, i32 %18, i8* %9)
  %20 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %21 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RC4_set_key(i32* %5, i32 %22, i8* %9)
  %24 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %25 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %28 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RC4(i32* %5, i32 %26, i8* %9, i32 %29)
  %31 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  %32 = call i32 @MPPEReduceSessionKey(%struct.mppe_state* %31)
  %33 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetNewKeyFromSHA(i32, i32, i32, i8*) #2

declare dso_local i32 @RC4_set_key(i32*, i32, i8*) #2

declare dso_local i32 @RC4(i32*, i32, i8*, i32) #2

declare dso_local i32 @MPPEReduceSessionKey(%struct.mppe_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
