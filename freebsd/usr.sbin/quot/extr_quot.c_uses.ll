; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_uses.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { i32, i32, i32, i32, i32 }

@uses.today = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @uses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uses(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.user*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @uses.today, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 @time(i64* @uses.today)
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.user* @user(i32 %13)
  store %struct.user* %14, %struct.user** %7, align 8
  %15 = load %struct.user*, %struct.user** %7, align 8
  %16 = getelementptr inbounds %struct.user, %struct.user* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.user*, %struct.user** %7, align 8
  %21 = getelementptr inbounds %struct.user, %struct.user* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i64, i64* @uses.today, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sgt i64 %28, 7776000
  br i1 %29, label %30, label %38

30:                                               ; preds = %12
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.user*, %struct.user** %7, align 8
  %33 = getelementptr inbounds %struct.user, %struct.user* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %38

38:                                               ; preds = %30, %12
  %39 = load i64, i64* @uses.today, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  %42 = icmp sgt i64 %41, 5184000
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.user*, %struct.user** %7, align 8
  %46 = getelementptr inbounds %struct.user, %struct.user* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  br label %51

51:                                               ; preds = %43, %38
  %52 = load i64, i64* @uses.today, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub nsw i64 %52, %53
  %55 = icmp sgt i64 %54, 2592000
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.user*, %struct.user** %7, align 8
  %59 = getelementptr inbounds %struct.user, %struct.user* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  br label %64

64:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local %struct.user* @user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
