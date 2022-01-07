; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_to_xtty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_to_xtty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xtty = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.xtty*)* @tty_to_xtty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_to_xtty(%struct.tty* %0, %struct.xtty* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.xtty*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.xtty* %1, %struct.xtty** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @tty_lock_assert(%struct.tty* %5, i32 %6)
  %8 = load %struct.xtty*, %struct.xtty** %4, align 8
  %9 = getelementptr inbounds %struct.xtty, %struct.xtty* %8, i32 0, i32 0
  store i32 52, i32* %9, align 4
  %10 = load %struct.tty*, %struct.tty** %3, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 8
  %12 = call i32 @ttyinq_getsize(i32* %11)
  %13 = load %struct.xtty*, %struct.xtty** %4, align 8
  %14 = getelementptr inbounds %struct.xtty, %struct.xtty* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 8
  %17 = call i32 @ttyinq_bytescanonicalized(i32* %16)
  %18 = load %struct.xtty*, %struct.xtty** %4, align 8
  %19 = getelementptr inbounds %struct.xtty, %struct.xtty* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 8
  %22 = call i32 @ttyinq_bytesline(i32* %21)
  %23 = load %struct.xtty*, %struct.xtty** %4, align 8
  %24 = getelementptr inbounds %struct.xtty, %struct.xtty* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xtty*, %struct.xtty** %4, align 8
  %29 = getelementptr inbounds %struct.xtty, %struct.xtty* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 6
  %32 = call i32 @ttyoutq_getsize(i32* %31)
  %33 = load %struct.xtty*, %struct.xtty** %4, align 8
  %34 = getelementptr inbounds %struct.xtty, %struct.xtty* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 6
  %37 = call i32 @ttyoutq_bytesused(i32* %36)
  %38 = load %struct.xtty*, %struct.xtty** %4, align 8
  %39 = getelementptr inbounds %struct.xtty, %struct.xtty* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tty*, %struct.tty** %3, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xtty*, %struct.xtty** %4, align 8
  %44 = getelementptr inbounds %struct.xtty, %struct.xtty* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tty*, %struct.tty** %3, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xtty*, %struct.xtty** %4, align 8
  %49 = getelementptr inbounds %struct.xtty, %struct.xtty* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load %struct.tty*, %struct.tty** %3, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %59, %54 ], [ 0, %60 ]
  %63 = load %struct.xtty*, %struct.xtty** %4, align 8
  %64 = getelementptr inbounds %struct.xtty, %struct.xtty* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tty*, %struct.tty** %3, align 8
  %66 = getelementptr inbounds %struct.tty, %struct.tty* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.tty*, %struct.tty** %3, align 8
  %71 = getelementptr inbounds %struct.tty, %struct.tty* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi i32 [ %74, %69 ], [ 0, %75 ]
  %78 = load %struct.xtty*, %struct.xtty** %4, align 8
  %79 = getelementptr inbounds %struct.xtty, %struct.xtty* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.tty*, %struct.tty** %3, align 8
  %81 = getelementptr inbounds %struct.tty, %struct.tty* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.xtty*, %struct.xtty** %4, align 8
  %84 = getelementptr inbounds %struct.xtty, %struct.xtty* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.tty*, %struct.tty** %3, align 8
  %86 = getelementptr inbounds %struct.tty, %struct.tty* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.tty*, %struct.tty** %3, align 8
  %91 = getelementptr inbounds %struct.tty, %struct.tty* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dev2udev(i64 %92)
  br label %97

94:                                               ; preds = %76
  %95 = load i64, i64* @NODEV, align 8
  %96 = trunc i64 %95 to i32
  br label %97

97:                                               ; preds = %94, %89
  %98 = phi i32 [ %93, %89 ], [ %96, %94 ]
  %99 = load %struct.xtty*, %struct.xtty** %4, align 8
  %100 = getelementptr inbounds %struct.xtty, %struct.xtty* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  ret void
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @ttyinq_getsize(i32*) #1

declare dso_local i32 @ttyinq_bytescanonicalized(i32*) #1

declare dso_local i32 @ttyinq_bytesline(i32*) #1

declare dso_local i32 @ttyoutq_getsize(i32*) #1

declare dso_local i32 @ttyoutq_bytesused(i32*) #1

declare dso_local i32 @dev2udev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
