; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetDeviceList.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetDeviceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @physical_SetDeviceList(%struct.physical* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load %struct.physical*, %struct.physical** %4, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 7
  store i8 0, i8* %13, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %69, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %20, 7
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %72

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.physical*, %struct.physical** %4, align 8
  %29 = getelementptr inbounds %struct.physical, %struct.physical* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %27, %24
  %37 = load %struct.physical*, %struct.physical** %4, align 8
  %38 = getelementptr inbounds %struct.physical, %struct.physical* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = ptrtoint i8* %43 to i32
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 8, %51
  %53 = sub i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i32 @strncpy(i32 %44, i8* %49, i32 %54)
  %56 = load %struct.physical*, %struct.physical** %4, align 8
  %57 = getelementptr inbounds %struct.physical, %struct.physical* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = ptrtoint i8* %62 to i32
  %64 = call i64 @strlen(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %36
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %14

72:                                               ; preds = %22
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.physical*, %struct.physical** %4, align 8
  %75 = getelementptr inbounds %struct.physical, %struct.physical* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
