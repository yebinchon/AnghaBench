; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ngsock = type { i32, i32* }
%struct.hookpriv = type { i32 }

@M_NETGRAPH_SOCK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HASHINIT = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*)* @ngs_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngs_newhook(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ngsock*, align 8
  %9 = alloca %struct.hookpriv*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = call %struct.ngsock* @NG_NODE_PRIVATE(%struct.TYPE_5__* %11)
  store %struct.ngsock* %12, %struct.ngsock** %8, align 8
  %13 = load i32, i32* @M_NETGRAPH_SOCK, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call %struct.hookpriv* @malloc(i32 4, i32 %13, i32 %14)
  store %struct.hookpriv* %15, %struct.hookpriv** %9, align 8
  %16 = load %struct.hookpriv*, %struct.hookpriv** %9, align 8
  %17 = icmp eq %struct.hookpriv* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %26 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 @ngs_rehash(%struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.hookpriv*, %struct.hookpriv** %9, align 8
  %35 = getelementptr inbounds %struct.hookpriv, %struct.hookpriv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @HASHINIT, align 4
  %38 = call i64 @hash32_str(i8* %36, i32 %37)
  %39 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %40 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = and i64 %38, %42
  store i64 %43, i64* %10, align 8
  %44 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %45 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.hookpriv*, %struct.hookpriv** %9, align 8
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @LIST_INSERT_HEAD(i32* %48, %struct.hookpriv* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hookpriv*, %struct.hookpriv** %9, align 8
  %54 = call i32 @NG_HOOK_SET_PRIVATE(i32 %52, %struct.hookpriv* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %32, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.ngsock* @NG_NODE_PRIVATE(%struct.TYPE_5__*) #1

declare dso_local %struct.hookpriv* @malloc(i32, i32, i32) #1

declare dso_local i32 @ngs_rehash(%struct.TYPE_5__*) #1

declare dso_local i64 @hash32_str(i8*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.hookpriv*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32, %struct.hookpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
