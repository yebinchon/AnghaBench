; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_sys_closefrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_sys_closefrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.closefrom_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_closefrom(%struct.thread* %0, %struct.closefrom_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.closefrom_args*, align 8
  %5 = alloca %struct.filedesc*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.closefrom_args* %1, %struct.closefrom_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  store %struct.filedesc* %11, %struct.filedesc** %5, align 8
  %12 = load %struct.closefrom_args*, %struct.closefrom_args** %4, align 8
  %13 = getelementptr inbounds %struct.closefrom_args, %struct.closefrom_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AUDIT_ARG_FD(i32 %14)
  %16 = load %struct.closefrom_args*, %struct.closefrom_args** %4, align 8
  %17 = getelementptr inbounds %struct.closefrom_args, %struct.closefrom_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.closefrom_args*, %struct.closefrom_args** %4, align 8
  %22 = getelementptr inbounds %struct.closefrom_args, %struct.closefrom_args* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %25 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %24)
  %26 = load %struct.closefrom_args*, %struct.closefrom_args** %4, align 8
  %27 = getelementptr inbounds %struct.closefrom_args, %struct.closefrom_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %54, %23
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %32 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %37 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %47 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %46)
  %48 = load %struct.thread*, %struct.thread** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @kern_close(%struct.thread* %48, i32 %49)
  %51 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %52 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %51)
  br label %53

53:                                               ; preds = %45, %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %59 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %58)
  ret i32 0
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @kern_close(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
