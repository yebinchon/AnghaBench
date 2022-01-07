; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_unregister_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_unregister_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmio_rb_range = type { %struct.mem_range }
%struct.mem_range = type { i64, i64, i64, i32 }

@mmio_rwlock = common dso_local global i32 0, align 4
@mmio_rb_root = common dso_local global i32 0, align 4
@MEM_F_IMMUTABLE = common dso_local global i32 0, align 4
@mmio_rb_tree = common dso_local global i32 0, align 4
@VM_MAXCPU = common dso_local global i32 0, align 4
@mmio_hint = common dso_local global %struct.mmio_rb_range** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_mem(%struct.mem_range* %0) #0 {
  %2 = alloca %struct.mem_range*, align 8
  %3 = alloca %struct.mem_range*, align 8
  %4 = alloca %struct.mmio_rb_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mem_range* %0, %struct.mem_range** %2, align 8
  store %struct.mmio_rb_range* null, %struct.mmio_rb_range** %4, align 8
  %8 = call i32 @pthread_rwlock_wrlock(i32* @mmio_rwlock)
  %9 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %10 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @mmio_rb_lookup(i32* @mmio_rb_root, i64 %11, %struct.mmio_rb_range** %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %79

15:                                               ; preds = %1
  %16 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %17 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %16, i32 0, i32 0
  store %struct.mem_range* %17, %struct.mem_range** %3, align 8
  %18 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %19 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %22 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %28 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %31 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %15
  %35 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %36 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %39 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br label %42

42:                                               ; preds = %34, %15
  %43 = phi i1 [ false, %15 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %47 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MEM_F_IMMUTABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* @mmio_rb_tree, align 4
  %55 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %56 = call i32 @RB_REMOVE(i32 %54, i32* @mmio_rb_root, %struct.mmio_rb_range* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %75, %42
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @VM_MAXCPU, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %62, i64 %64
  %66 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %65, align 8
  %67 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %68 = icmp eq %struct.mmio_rb_range* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %70, i64 %72
  store %struct.mmio_rb_range* null, %struct.mmio_rb_range** %73, align 8
  br label %74

74:                                               ; preds = %69, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %1
  %80 = call i32 @pthread_rwlock_unlock(i32* @mmio_rwlock)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %86 = icmp ne %struct.mmio_rb_range* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %89 = call i32 @free(%struct.mmio_rb_range* %88)
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @pthread_rwlock_wrlock(i32*) #1

declare dso_local i32 @mmio_rb_lookup(i32*, i64, %struct.mmio_rb_range**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.mmio_rb_range*) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @free(%struct.mmio_rb_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
