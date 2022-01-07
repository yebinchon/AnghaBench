; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_backgroundwritedone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_backgroundwritedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32, i32, i32, %struct.bufobj* }
%struct.bufobj = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"backgroundwritedone: lost buffer\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@BV_BKGRDERR = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@BV_BKGRDINPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"backgroundwritedone: lost buffer2\00", align 1
@BV_BKGRDWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @ffs_backgroundwritedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_backgroundwritedone(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.bufobj*, align 8
  %4 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 6
  %7 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  store %struct.bufobj* %7, %struct.bufobj** %3, align 8
  %8 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %9 = call i32 @BO_LOCK(%struct.bufobj* %8)
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 6
  %12 = load %struct.bufobj*, %struct.bufobj** %11, align 8
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.buf* @gbincore(%struct.bufobj* %12, i32 %15)
  store %struct.buf* %16, %struct.buf** %4, align 8
  %17 = icmp eq %struct.buf* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.buf*, %struct.buf** %2, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BIO_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @BV_BKGRDERR, align 4
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %35 = call i32 @BO_UNLOCK(%struct.bufobj* %34)
  %36 = load %struct.buf*, %struct.buf** %2, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 4
  %38 = call i32 @LIST_EMPTY(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load %struct.buf*, %struct.buf** %2, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BIO_ERROR, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.buf*, %struct.buf** %2, align 8
  %49 = call i32 @buf_complete(%struct.buf* %48)
  br label %50

50:                                               ; preds = %47, %40, %33
  %51 = load i32, i32* @B_NOCACHE, align 4
  %52 = load %struct.buf*, %struct.buf** %2, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @B_CACHE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.buf*, %struct.buf** %2, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.buf*, %struct.buf** %2, align 8
  %63 = call i32 @pbrelvp(%struct.buf* %62)
  %64 = load %struct.buf*, %struct.buf** %2, align 8
  %65 = getelementptr inbounds %struct.buf, %struct.buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BIO_ERROR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %50
  %71 = load i32, i32* @B_INVAL, align 4
  %72 = load %struct.buf*, %struct.buf** %2, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %50
  %77 = load %struct.buf*, %struct.buf** %2, align 8
  %78 = call i32 @bufdone(%struct.buf* %77)
  %79 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %80 = call i32 @BO_LOCK(%struct.bufobj* %79)
  %81 = load %struct.buf*, %struct.buf** %4, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BV_BKGRDINPROG, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @KASSERT(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @BV_BKGRDINPROG, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.buf*, %struct.buf** %4, align 8
  %90 = getelementptr inbounds %struct.buf, %struct.buf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.buf*, %struct.buf** %4, align 8
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BV_BKGRDWAIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %76
  %100 = load i32, i32* @BV_BKGRDWAIT, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.buf*, %struct.buf** %4, align 8
  %103 = getelementptr inbounds %struct.buf, %struct.buf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.buf*, %struct.buf** %4, align 8
  %107 = getelementptr inbounds %struct.buf, %struct.buf* %106, i32 0, i32 2
  %108 = call i32 @wakeup(i32* %107)
  br label %109

109:                                              ; preds = %99, %76
  %110 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %111 = call i32 @BO_UNLOCK(%struct.bufobj* %110)
  ret void
}

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local %struct.buf* @gbincore(%struct.bufobj*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @buf_complete(%struct.buf*) #1

declare dso_local i32 @pbrelvp(%struct.buf*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
