; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_hash_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_hash_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.flock = type { i32, i32 }

@F_REMOTE = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@LOCK_OWNER_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vnode*, %struct.flock*, i32)* @lf_hash_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_hash_owner(i64 %0, %struct.vnode* %1, %struct.flock* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.flock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.flock* %2, %struct.flock** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @F_REMOTE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.flock*, %struct.flock** %7, align 8
  %16 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @HASHSTEP(i32 0, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.flock*, %struct.flock** %7, align 8
  %21 = getelementptr inbounds %struct.flock, %struct.flock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @HASHSTEP(i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @F_FLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 7
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  %35 = ptrtoint %struct.vnode* %34 to i64
  %36 = lshr i64 %35, 7
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %29
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @LOCK_OWNER_HASH_SIZE, align 4
  %42 = srem i32 %40, %41
  ret i32 %42
}

declare dso_local i32 @HASHSTEP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
