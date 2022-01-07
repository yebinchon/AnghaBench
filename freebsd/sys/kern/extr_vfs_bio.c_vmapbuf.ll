; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vmapbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vmapbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buf = type { i64, i64, i32, i32, i64, i64, i32 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_4__* null, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@unmapped_buf_allowed = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmapbuf(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.buf*, %struct.buf** %4, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BIO_READ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @VM_PROT_WRITE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curproc, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.buf*, %struct.buf** %4, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.buf*, %struct.buf** %4, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MAXPHYS, align 4
  %41 = call i32 @btoc(i32 %40)
  %42 = call i32 @vm_fault_quick_hold_pages(i32* %28, i32 %32, i64 %35, i32 %36, i32 %39, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %87

45:                                               ; preds = %24
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.buf*, %struct.buf** %4, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.buf*, %struct.buf** %4, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @PAGE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.buf*, %struct.buf** %4, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @unmapped_buf_allowed, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %59, %45
  %63 = load %struct.buf*, %struct.buf** %4, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.buf*, %struct.buf** %4, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pmap_qenter(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.buf*, %struct.buf** %4, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.buf*, %struct.buf** %4, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load %struct.buf*, %struct.buf** %4, align 8
  %81 = getelementptr inbounds %struct.buf, %struct.buf* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  br label %86

82:                                               ; preds = %59
  %83 = load i64, i64* @unmapped_buf, align 8
  %84 = load %struct.buf*, %struct.buf** %4, align 8
  %85 = getelementptr inbounds %struct.buf, %struct.buf* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %62
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %44, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @vm_fault_quick_hold_pages(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @btoc(i32) #1

declare dso_local i32 @pmap_qenter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
