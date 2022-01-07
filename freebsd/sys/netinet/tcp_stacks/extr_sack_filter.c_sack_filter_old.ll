; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i32 }
%struct.sackblk = type { i32 }

@TCP_MAX_SACK = common dso_local global i32 0, align 4
@cnt_skipped_oldsack = common dso_local global i32 0, align 4
@cnt_used_oldsack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sack_filter*, %struct.sackblk*, i32)* @sack_filter_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sack_filter_old(%struct.sack_filter* %0, %struct.sackblk* %1, i32 %2) #0 {
  %4 = alloca %struct.sack_filter*, align 8
  %5 = alloca %struct.sackblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.sack_filter* %0, %struct.sack_filter** %4, align 8
  store %struct.sackblk* %1, %struct.sackblk** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @TCP_MAX_SACK, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca %struct.sackblk, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %21 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %21, i64 %23
  %25 = call i64 @is_sack_on_board(%struct.sack_filter* %20, %struct.sackblk* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @cnt_skipped_oldsack, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @cnt_skipped_oldsack, align 4
  br label %43

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %14, i64 %32
  %34 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %34, i64 %36
  %38 = call i32 @memcpy(%struct.sackblk* %33, %struct.sackblk* %37, i32 4)
  %39 = load i32, i32* @cnt_used_oldsack, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @cnt_used_oldsack, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %30, %27
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(%struct.sackblk* %50, %struct.sackblk* %14, i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_sack_on_board(%struct.sack_filter*, %struct.sackblk*) #2

declare dso_local i32 @memcpy(%struct.sackblk*, %struct.sackblk*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
