; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_add_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_add_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)* }

@EINVAL = common dso_local global i32 0, align 4
@intrsrc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_add_handler(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.intsrc*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.intsrc* @intr_lookup_source(i32 %20)
  store %struct.intsrc* %21, %struct.intsrc** %18, align 8
  %22 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %23 = icmp eq %struct.intsrc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %9, align 4
  br label %75

26:                                               ; preds = %8
  %27 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %28 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @intr_priority(i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i8**, i8*** %16, align 8
  %38 = call i32 @intr_event_add_handler(i32 %29, i8* %30, i32 %31, i32 %32, i8* %33, i32 %35, i32 %36, i8** %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %26
  %42 = call i32 @sx_xlock(i32* @intrsrc_lock)
  %43 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %44 = call i32 @intrcnt_updatename(%struct.intsrc* %43)
  %45 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %46 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %50 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %41
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %56 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %58 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)** %60, align 8
  %62 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %63 = call i32 %61(%struct.intsrc* %62)
  %64 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %65 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)** %67, align 8
  %69 = load %struct.intsrc*, %struct.intsrc** %18, align 8
  %70 = call i32 %68(%struct.intsrc* %69)
  br label %71

71:                                               ; preds = %53, %41
  %72 = call i32 @sx_xunlock(i32* @intrsrc_lock)
  br label %73

73:                                               ; preds = %71, %26
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %24
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local %struct.intsrc* @intr_lookup_source(i32) #1

declare dso_local i32 @intr_event_add_handler(i32, i8*, i32, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @intr_priority(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @intrcnt_updatename(%struct.intsrc*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
