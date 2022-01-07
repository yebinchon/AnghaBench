; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_inject.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_bpf_params = type { i32 }
%struct.iovec = type { i32, %struct.ieee80211_bpf_params* }

@.str = private unnamed_addr constant [9 x i8] c"writev()\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Wrote only %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inject(i32 %0, i8* %1, i32 %2, %struct.ieee80211_bpf_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_bpf_params*, align 8
  %9 = alloca [2 x %struct.iovec], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_bpf_params* %3, %struct.ieee80211_bpf_params** %8, align 8
  %12 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %8, align 8
  %13 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store %struct.ieee80211_bpf_params* %12, %struct.ieee80211_bpf_params** %14, align 8
  %15 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 16
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.ieee80211_bpf_params*
  %22 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 1
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 1
  store %struct.ieee80211_bpf_params* %21, %struct.ieee80211_bpf_params** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 1
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 16
  %27 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 1
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %36 = call i32 @writev(i32 %34, %struct.iovec* %35, i32 2)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %41
  ret void
}

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
