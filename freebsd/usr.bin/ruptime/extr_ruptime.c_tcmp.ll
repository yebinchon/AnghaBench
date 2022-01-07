; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ruptime/extr_ruptime.c_tcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ruptime/extr_ruptime.c_tcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@rflg = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @tcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @rflg, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.TYPE_5__* @HS(i8* %6)
  %8 = call i64 @ISDOWN(%struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.TYPE_5__* @HS(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @now, align 4
  %17 = sub nsw i32 %15, %16
  br label %30

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.TYPE_5__* @HS(i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.TYPE_5__* @HS(i8* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  br label %30

30:                                               ; preds = %18, %10
  %31 = phi i32 [ %17, %10 ], [ %29, %18 ]
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.TYPE_5__* @HS(i8* %32)
  %34 = call i64 @ISDOWN(%struct.TYPE_5__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  %38 = call %struct.TYPE_5__* @HS(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @now, align 4
  %43 = sub nsw i32 %41, %42
  br label %56

44:                                               ; preds = %30
  %45 = load i8*, i8** %3, align 8
  %46 = call %struct.TYPE_5__* @HS(i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = call %struct.TYPE_5__* @HS(i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %49, %54
  br label %56

56:                                               ; preds = %44, %36
  %57 = phi i32 [ %43, %36 ], [ %55, %44 ]
  %58 = sub nsw i32 %31, %57
  %59 = mul nsw i32 %5, %58
  ret i32 %59
}

declare dso_local i64 @ISDOWN(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @HS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
