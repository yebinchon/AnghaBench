; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_usermap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_usermap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i8*, i32, %struct.name* }
%struct.grouphead = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"metoo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @usermap(%struct.name* %0) #0 {
  %2 = alloca %struct.name*, align 8
  %3 = alloca %struct.name*, align 8
  %4 = alloca %struct.name*, align 8
  %5 = alloca %struct.name*, align 8
  %6 = alloca %struct.grouphead*, align 8
  %7 = alloca i32, align 4
  store %struct.name* %0, %struct.name** %2, align 8
  store %struct.name* null, %struct.name** %3, align 8
  %8 = load %struct.name*, %struct.name** %2, align 8
  store %struct.name* %8, %struct.name** %4, align 8
  %9 = call i32* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %53, %23, %1
  %13 = load %struct.name*, %struct.name** %4, align 8
  %14 = icmp ne %struct.name* %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  %16 = load %struct.name*, %struct.name** %4, align 8
  %17 = getelementptr inbounds %struct.name, %struct.name* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 92
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.name*, %struct.name** %4, align 8
  %25 = getelementptr inbounds %struct.name, %struct.name* %24, i32 0, i32 2
  %26 = load %struct.name*, %struct.name** %25, align 8
  store %struct.name* %26, %struct.name** %5, align 8
  %27 = load %struct.name*, %struct.name** %3, align 8
  %28 = load %struct.name*, %struct.name** %4, align 8
  %29 = call %struct.name* @put(%struct.name* %27, %struct.name* %28)
  store %struct.name* %29, %struct.name** %3, align 8
  %30 = load %struct.name*, %struct.name** %5, align 8
  store %struct.name* %30, %struct.name** %4, align 8
  br label %12

31:                                               ; preds = %15
  %32 = load %struct.name*, %struct.name** %4, align 8
  %33 = getelementptr inbounds %struct.name, %struct.name* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.grouphead* @findgroup(i8* %34)
  store %struct.grouphead* %35, %struct.grouphead** %6, align 8
  %36 = load %struct.name*, %struct.name** %4, align 8
  %37 = getelementptr inbounds %struct.name, %struct.name* %36, i32 0, i32 2
  %38 = load %struct.name*, %struct.name** %37, align 8
  store %struct.name* %38, %struct.name** %5, align 8
  %39 = load %struct.grouphead*, %struct.grouphead** %6, align 8
  %40 = icmp ne %struct.grouphead* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.name*, %struct.name** %3, align 8
  %43 = load %struct.grouphead*, %struct.grouphead** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.name*, %struct.name** %4, align 8
  %46 = getelementptr inbounds %struct.name, %struct.name* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.name* @gexpand(%struct.name* %42, %struct.grouphead* %43, i32 %44, i32 %47)
  store %struct.name* %48, %struct.name** %3, align 8
  br label %53

49:                                               ; preds = %31
  %50 = load %struct.name*, %struct.name** %3, align 8
  %51 = load %struct.name*, %struct.name** %4, align 8
  %52 = call %struct.name* @put(%struct.name* %50, %struct.name* %51)
  store %struct.name* %52, %struct.name** %3, align 8
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.name*, %struct.name** %5, align 8
  store %struct.name* %54, %struct.name** %4, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load %struct.name*, %struct.name** %3, align 8
  ret %struct.name* %56
}

declare dso_local i32* @value(i8*) #1

declare dso_local %struct.name* @put(%struct.name*, %struct.name*) #1

declare dso_local %struct.grouphead* @findgroup(i8*) #1

declare dso_local %struct.name* @gexpand(%struct.name*, %struct.grouphead*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
