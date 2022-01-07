; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_bnoreuselist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_bnoreuselist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufv = type { i32 }
%struct.bufobj = type { i32 }
%struct.buf = type { i64, i32, %struct.bufobj* }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SLEEPFAIL = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"brlsfl\00", align 1
@ENOLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bp %p wrong b_bufobj %p should be %p\00", align 1
@B_MANAGED = common dso_local global i32 0, align 4
@B_RELBUF = common dso_local global i32 0, align 4
@B_VMIO = common dso_local global i32 0, align 4
@B_NOREUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnoreuselist(%struct.bufv* %0, %struct.bufobj* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufv*, align 8
  %7 = alloca %struct.bufobj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bufv* %0, %struct.bufv** %6, align 8
  store %struct.bufobj* %1, %struct.bufobj** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %14 = call i32 @ASSERT_BO_LOCKED(%struct.bufobj* %13)
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %12, align 8
  br label %16

16:                                               ; preds = %103, %4
  br label %17

17:                                               ; preds = %55, %16
  %18 = load %struct.bufv*, %struct.bufv** %6, align 8
  %19 = getelementptr inbounds %struct.bufv, %struct.bufv* %18, i32 0, i32 0
  %20 = load i64, i64* %12, align 8
  %21 = call %struct.buf* @BUF_PCTRIE_LOOKUP_GE(i32* %19, i64 %20)
  store %struct.buf* %21, %struct.buf** %10, align 8
  %22 = load %struct.buf*, %struct.buf** %10, align 8
  %23 = icmp eq %struct.buf* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %17
  %25 = load %struct.buf*, %struct.buf** %10, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.buf*, %struct.buf** %10, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %17
  br label %108

37:                                               ; preds = %30
  %38 = load %struct.buf*, %struct.buf** %10, align 8
  %39 = load i32, i32* @LK_EXCLUSIVE, align 4
  %40 = load i32, i32* @LK_SLEEPFAIL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @LK_INTERLOCK, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %45 = call i32 @BO_LOCKPTR(%struct.bufobj* %44)
  %46 = call i32 @BUF_TIMELOCK(%struct.buf* %38, i32 %43, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %51 = call i32 @BO_RLOCK(%struct.bufobj* %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @ENOLCK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %17

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %109

58:                                               ; preds = %37
  %59 = load %struct.buf*, %struct.buf** %10, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 2
  %61 = load %struct.bufobj*, %struct.bufobj** %60, align 8
  %62 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %63 = icmp eq %struct.bufobj* %61, %62
  %64 = zext i1 %63 to i32
  %65 = load %struct.buf*, %struct.buf** %10, align 8
  %66 = load %struct.buf*, %struct.buf** %10, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 2
  %68 = load %struct.bufobj*, %struct.bufobj** %67, align 8
  %69 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %70 = bitcast %struct.bufobj* %69 to i8*
  %71 = call i32 @KASSERT(i32 %64, i8* %70)
  %72 = load %struct.buf*, %struct.buf** %10, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %12, align 8
  %76 = load %struct.buf*, %struct.buf** %10, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @B_MANAGED, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %58
  %83 = load %struct.buf*, %struct.buf** %10, align 8
  %84 = call i32 @bremfree(%struct.buf* %83)
  br label %85

85:                                               ; preds = %82, %58
  %86 = load i32, i32* @B_RELBUF, align 4
  %87 = load %struct.buf*, %struct.buf** %10, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.buf*, %struct.buf** %10, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @B_VMIO, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %85
  %98 = load i32, i32* @B_NOREUSE, align 4
  %99 = load %struct.buf*, %struct.buf** %10, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %85
  %104 = load %struct.buf*, %struct.buf** %10, align 8
  %105 = call i32 @brelse(%struct.buf* %104)
  %106 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %107 = call i32 @BO_RLOCK(%struct.bufobj* %106)
  br label %16

108:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %56
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @ASSERT_BO_LOCKED(%struct.bufobj*) #1

declare dso_local %struct.buf* @BUF_PCTRIE_LOOKUP_GE(i32*, i64) #1

declare dso_local i32 @BUF_TIMELOCK(%struct.buf*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @BO_LOCKPTR(%struct.bufobj*) #1

declare dso_local i32 @BO_RLOCK(%struct.bufobj*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bremfree(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
