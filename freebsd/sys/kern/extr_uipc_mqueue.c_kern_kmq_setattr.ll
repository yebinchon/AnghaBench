; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_kern_kmq_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_kern_kmq_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mq_attr = type { i32, i32, i32, i32 }
%struct.mqueue = type { i32, i32, i32 }
%struct.file = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.mq_attr*, %struct.mq_attr*)* @kern_kmq_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_kmq_setattr(%struct.thread* %0, i32 %1, %struct.mq_attr* %2, %struct.mq_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mq_attr*, align 8
  %9 = alloca %struct.mq_attr*, align 8
  %10 = alloca %struct.mqueue*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mq_attr* %2, %struct.mq_attr** %8, align 8
  store %struct.mq_attr* %3, %struct.mq_attr** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @AUDIT_ARG_FD(i32 %15)
  %17 = load %struct.mq_attr*, %struct.mq_attr** %8, align 8
  %18 = icmp ne %struct.mq_attr* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.mq_attr*, %struct.mq_attr** %8, align 8
  %21 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %19, %4
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @getmq(%struct.thread* %30, i32 %31, %struct.file** %11, i32* null, %struct.mqueue** %10)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %5, align 4
  br label %93

37:                                               ; preds = %29
  %38 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %39 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mq_attr*, %struct.mq_attr** %9, align 8
  %42 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %44 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mq_attr*, %struct.mq_attr** %9, align 8
  %47 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %49 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mq_attr*, %struct.mq_attr** %9, align 8
  %52 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mq_attr*, %struct.mq_attr** %8, align 8
  %54 = icmp ne %struct.mq_attr* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %71, %55
  %57 = load %struct.file*, %struct.file** %11, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @O_NONBLOCK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = load %struct.mq_attr*, %struct.mq_attr** %8, align 8
  %65 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @O_NONBLOCK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %56
  %72 = load %struct.file*, %struct.file** %11, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @atomic_cmpset_int(i32* %73, i32 %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %56, label %78

78:                                               ; preds = %71
  br label %83

79:                                               ; preds = %37
  %80 = load %struct.file*, %struct.file** %11, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %78
  %84 = load i32, i32* @O_NONBLOCK, align 4
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.mq_attr*, %struct.mq_attr** %9, align 8
  %88 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.file*, %struct.file** %11, align 8
  %90 = load %struct.thread*, %struct.thread** %6, align 8
  %91 = call i32 @fdrop(%struct.file* %89, %struct.thread* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %83, %35, %27
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getmq(%struct.thread*, i32, %struct.file**, i32*, %struct.mqueue**) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
