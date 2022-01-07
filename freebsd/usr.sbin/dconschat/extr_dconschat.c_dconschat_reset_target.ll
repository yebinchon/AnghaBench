; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_reset_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_reset_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i64 }
%struct.dcons_port = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"\0D\0A[dconschat reset target(addr=0x%jx)...]\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcons_state*, %struct.dcons_port*)* @dconschat_reset_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dconschat_reset_target(%struct.dcons_state* %0, %struct.dcons_port* %1) #0 {
  %3 = alloca %struct.dcons_state*, align 8
  %4 = alloca %struct.dcons_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %3, align 8
  store %struct.dcons_port* %1, %struct.dcons_port** %4, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %13 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %20 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @snprintf(i8* %11, i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %25 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlen(i8* %11)
  %28 = call i32 @write(i32 %26, i8* %11, i32 %27)
  %29 = getelementptr inbounds i8, i8* %11, i64 0
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @bzero(i8* %29, i32 %30)
  %32 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %35 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dwrite(%struct.dcons_state* %32, i8* %11, i32 %33, i64 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %17, %16
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 1, label %41
  ]

41:                                               ; preds = %38, %38
  ret void

42:                                               ; preds = %38
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @dwrite(%struct.dcons_state*, i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
