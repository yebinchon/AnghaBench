; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i8*, %struct.prison* }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@prison0 = common dso_local global %struct.prison zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prison_name(%struct.prison* %0, %struct.prison* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.prison*, align 8
  %5 = alloca %struct.prison*, align 8
  %6 = alloca i8*, align 8
  store %struct.prison* %0, %struct.prison** %4, align 8
  store %struct.prison* %1, %struct.prison** %5, align 8
  %7 = load %struct.prison*, %struct.prison** %4, align 8
  %8 = load %struct.prison*, %struct.prison** %5, align 8
  %9 = icmp eq %struct.prison* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.prison*, %struct.prison** %5, align 8
  %13 = getelementptr inbounds %struct.prison, %struct.prison* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.prison*, %struct.prison** %4, align 8
  %16 = load %struct.prison*, %struct.prison** %5, align 8
  %17 = call i64 @prison_ischild(%struct.prison* %15, %struct.prison* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %27, %19
  %21 = load %struct.prison*, %struct.prison** %4, align 8
  %22 = icmp ne %struct.prison* %21, @prison0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 46)
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.prison*, %struct.prison** %4, align 8
  %29 = getelementptr inbounds %struct.prison, %struct.prison* %28, i32 0, i32 1
  %30 = load %struct.prison*, %struct.prison** %29, align 8
  store %struct.prison* %30, %struct.prison** %4, align 8
  br label %20

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i64 @prison_ischild(%struct.prison*, %struct.prison*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
