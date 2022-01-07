; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_unbusy_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_unbusy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B_VMIO = common dso_local global i32 0, align 4
@bogus_page = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"vfs_unbusy_pages: page missing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_unbusy_pages(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %7 = load %struct.buf*, %struct.buf** %2, align 8
  %8 = call i32 @runningbufwakeup(%struct.buf* %7)
  %9 = load %struct.buf*, %struct.buf** %2, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @B_VMIO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.buf*, %struct.buf** %2, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %92, %16
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.buf*, %struct.buf** %2, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = load %struct.buf*, %struct.buf** %2, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @bogus_page, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @VM_OBJECT_RLOCK(i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.buf*, %struct.buf** %2, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @OFF_TO_IDX(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i64 @vm_page_lookup(i32 %46, i64 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.buf*, %struct.buf** %2, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  %67 = load %struct.buf*, %struct.buf** %2, align 8
  %68 = call i64 @buf_mapped(%struct.buf* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %59
  %71 = load %struct.buf*, %struct.buf** %2, align 8
  %72 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %71)
  %73 = load %struct.buf*, %struct.buf** %2, align 8
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @trunc_page(i32 %76)
  %78 = load %struct.buf*, %struct.buf** %2, align 8
  %79 = getelementptr inbounds %struct.buf, %struct.buf* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.buf*, %struct.buf** %2, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pmap_qenter(i32 %77, i64* %80, i32 %83)
  br label %88

85:                                               ; preds = %59
  %86 = load %struct.buf*, %struct.buf** %2, align 8
  %87 = call i32 @BUF_CHECK_UNMAPPED(%struct.buf* %86)
  br label %88

88:                                               ; preds = %85, %70
  br label %89

89:                                               ; preds = %88, %28
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @vm_page_sunbusy(i64 %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %22

95:                                               ; preds = %22
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @VM_OBJECT_RUNLOCK(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.buf*, %struct.buf** %2, align 8
  %104 = getelementptr inbounds %struct.buf, %struct.buf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vm_object_pip_wakeupn(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %15
  ret void
}

declare dso_local i32 @runningbufwakeup(%struct.buf*) #1

declare dso_local i32 @VM_OBJECT_RLOCK(i32) #1

declare dso_local i64 @vm_page_lookup(i32, i64) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @pmap_qenter(i32, i64*, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @BUF_CHECK_UNMAPPED(%struct.buf*) #1

declare dso_local i32 @vm_page_sunbusy(i64) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(i32) #1

declare dso_local i32 @vm_object_pip_wakeupn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
