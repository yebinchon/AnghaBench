; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bpf.c_ng_bpf_setprog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bpf.c_ng_bpf_setprog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_bpf_hookprog = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ng_bpf_hookprog*, i8*, i8*, i32* }

@bpf_maxinsns = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_NETGRAPH_BPF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ng_bpf_hookprog*)* @ng_bpf_setprog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bpf_setprog(i32 %0, %struct.ng_bpf_hookprog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ng_bpf_hookprog*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.ng_bpf_hookprog*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ng_bpf_hookprog* %1, %struct.ng_bpf_hookprog** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_3__* @NG_HOOK_PRIVATE(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %5, align 8
  %12 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bpf_maxinsns, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %5, align 8
  %18 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %5, align 8
  %21 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @bpf_validate(i32 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16, %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %16
  %28 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %5, align 8
  %29 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @NG_BPF_HOOKPROG_SIZE(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @M_NETGRAPH_BPF, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call %struct.ng_bpf_hookprog* @malloc(i32 %32, i32 %33, i32 %34)
  store %struct.ng_bpf_hookprog* %35, %struct.ng_bpf_hookprog** %7, align 8
  %36 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %7, align 8
  %37 = icmp eq %struct.ng_bpf_hookprog* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %3, align 4
  br label %79

40:                                               ; preds = %27
  %41 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %5, align 8
  %42 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @bcopy(%struct.ng_bpf_hookprog* %41, %struct.ng_bpf_hookprog* %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %46, align 8
  %48 = icmp ne %struct.ng_bpf_hookprog* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %51, align 8
  %53 = load i32, i32* @M_NETGRAPH_BPF, align 4
  %54 = call i32 @free(%struct.ng_bpf_hookprog* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %40
  %56 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %7, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store %struct.ng_bpf_hookprog* %56, %struct.ng_bpf_hookprog** %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @NG_HOOK_NODE(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %62, align 8
  %64 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @ng_findhook(i32 %60, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @NG_HOOK_NODE(i32 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %72, align 8
  %74 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @ng_findhook(i32 %70, i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %55, %38, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_3__* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @bpf_validate(i32, i64) #1

declare dso_local i32 @NG_BPF_HOOKPROG_SIZE(i64) #1

declare dso_local %struct.ng_bpf_hookprog* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog*, i32) #1

declare dso_local i32 @free(%struct.ng_bpf_hookprog*, i32) #1

declare dso_local i8* @ng_findhook(i32, i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
