; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_loginclass.c_loginclass_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_loginclass.c_loginclass_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.loginclass* }
%struct.loginclass = type { i32, i32, i32 }

@MAXLOGNAME = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@loginclasses_lock = common dso_local global i32 0, align 4
@M_LOGINCLASS = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@loginclasses = common dso_local global i32 0, align 4
@lc_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loginclass* @loginclass_find(i8* %0) #0 {
  %2 = alloca %struct.loginclass*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.loginclass*, align 8
  %5 = alloca %struct.loginclass*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @MAXLOGNAME, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store %struct.loginclass* null, %struct.loginclass** %2, align 8
  br label %79

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.loginclass*, %struct.loginclass** %21, align 8
  store %struct.loginclass* %22, %struct.loginclass** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.loginclass*, %struct.loginclass** %4, align 8
  %25 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i8* %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.loginclass*, %struct.loginclass** %4, align 8
  %31 = call i32 @loginclass_hold(%struct.loginclass* %30)
  %32 = load %struct.loginclass*, %struct.loginclass** %4, align 8
  store %struct.loginclass* %32, %struct.loginclass** %2, align 8
  br label %79

33:                                               ; preds = %17
  %34 = call i32 @rw_rlock(i32* @loginclasses_lock)
  %35 = load i8*, i8** %3, align 8
  %36 = call %struct.loginclass* @loginclass_lookup(i8* %35)
  store %struct.loginclass* %36, %struct.loginclass** %4, align 8
  %37 = call i32 @rw_runlock(i32* @loginclasses_lock)
  %38 = load %struct.loginclass*, %struct.loginclass** %4, align 8
  %39 = icmp ne %struct.loginclass* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.loginclass*, %struct.loginclass** %4, align 8
  store %struct.loginclass* %41, %struct.loginclass** %2, align 8
  br label %79

42:                                               ; preds = %33
  %43 = load i32, i32* @M_LOGINCLASS, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.loginclass* @malloc(i32 12, i32 %43, i32 %46)
  store %struct.loginclass* %47, %struct.loginclass** %5, align 8
  %48 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  %49 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %48, i32 0, i32 0
  %50 = call i32 @racct_create(i32* %49)
  %51 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  %52 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %51, i32 0, i32 2
  %53 = call i32 @refcount_init(i32* %52, i32 1)
  %54 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  %55 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strcpy(i32 %56, i8* %57)
  %59 = call i32 @rw_wlock(i32* @loginclasses_lock)
  %60 = load i8*, i8** %3, align 8
  %61 = call %struct.loginclass* @loginclass_lookup(i8* %60)
  store %struct.loginclass* %61, %struct.loginclass** %4, align 8
  %62 = icmp eq %struct.loginclass* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %42
  %64 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  %65 = load i32, i32* @lc_next, align 4
  %66 = call i32 @LIST_INSERT_HEAD(i32* @loginclasses, %struct.loginclass* %64, i32 %65)
  %67 = call i32 @rw_wunlock(i32* @loginclasses_lock)
  %68 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  store %struct.loginclass* %68, %struct.loginclass** %4, align 8
  br label %77

69:                                               ; preds = %42
  %70 = call i32 @rw_wunlock(i32* @loginclasses_lock)
  %71 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  %72 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %71, i32 0, i32 0
  %73 = call i32 @racct_destroy(i32* %72)
  %74 = load %struct.loginclass*, %struct.loginclass** %5, align 8
  %75 = load i32, i32* @M_LOGINCLASS, align 4
  %76 = call i32 @free(%struct.loginclass* %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %63
  %78 = load %struct.loginclass*, %struct.loginclass** %4, align 8
  store %struct.loginclass* %78, %struct.loginclass** %2, align 8
  br label %79

79:                                               ; preds = %77, %40, %29, %16
  %80 = load %struct.loginclass*, %struct.loginclass** %2, align 8
  ret %struct.loginclass* %80
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @loginclass_hold(%struct.loginclass*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local %struct.loginclass* @loginclass_lookup(i8*) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local %struct.loginclass* @malloc(i32, i32, i32) #1

declare dso_local i32 @racct_create(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.loginclass*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @racct_destroy(i32*) #1

declare dso_local i32 @free(%struct.loginclass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
