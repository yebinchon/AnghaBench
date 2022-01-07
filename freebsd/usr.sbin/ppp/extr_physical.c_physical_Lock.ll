; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@PHYS_DIRECT = common dso_local global i64 0, align 8
@UU_LOCK_OK = common dso_local global i32 0, align 4
@UU_LOCK_INUSE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: %s is in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: %s is in use: uu_lock: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*)* @physical_Lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physical_Lock(%struct.physical* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %3, align 8
  %5 = load %struct.physical*, %struct.physical** %3, align 8
  %6 = getelementptr inbounds %struct.physical, %struct.physical* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 47
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = load %struct.physical*, %struct.physical** %3, align 8
  %14 = getelementptr inbounds %struct.physical, %struct.physical* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PHYS_DIRECT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.physical*, %struct.physical** %3, align 8
  %20 = getelementptr inbounds %struct.physical, %struct.physical* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ID0uu_lock(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @UU_LOCK_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @UU_LOCK_INUSE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @LogPHASE, align 4
  %32 = load %struct.physical*, %struct.physical** %3, align 8
  %33 = getelementptr inbounds %struct.physical, %struct.physical* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.physical*, %struct.physical** %3, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, i32, i8*, ...) @log_Printf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %39)
  br label %54

41:                                               ; preds = %26
  %42 = load i32, i32* @LogPHASE, align 4
  %43 = load %struct.physical*, %struct.physical** %3, align 8
  %44 = getelementptr inbounds %struct.physical, %struct.physical* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.physical*, %struct.physical** %3, align 8
  %48 = getelementptr inbounds %struct.physical, %struct.physical* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @uu_lockerr(i32 %51)
  %53 = call i32 (i32, i8*, i32, i8*, ...) @log_Printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %50, i32 %52)
  br label %54

54:                                               ; preds = %41, %30
  store i32 0, i32* %2, align 4
  br label %56

55:                                               ; preds = %18, %12, %1
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ID0uu_lock(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @uu_lockerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
