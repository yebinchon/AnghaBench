; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_socket_free_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_socket_free_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngsock = type { i32, i32, i32*, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_NETGRAPH_SOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngsock*)* @ng_socket_free_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_socket_free_priv(%struct.ngsock* %0) #0 {
  %2 = alloca %struct.ngsock*, align 8
  %3 = alloca i32*, align 8
  store %struct.ngsock* %0, %struct.ngsock** %2, align 8
  %4 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %5 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %4, i32 0, i32 1
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %9 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %13 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %18 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %17, i32 0, i32 1
  %19 = call i32 @mtx_destroy(i32* %18)
  %20 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %21 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @M_NETGRAPH_SOCK, align 4
  %24 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %25 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hashdestroy(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %29 = load i32, i32* @M_NETGRAPH_SOCK, align 4
  %30 = call i32 @free(%struct.ngsock* %28, i32 %29)
  br label %58

31:                                               ; preds = %1
  %32 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %33 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %38 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %43 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %3, align 8
  %45 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %46 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %48 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %47, i32 0, i32 1
  %49 = call i32 @mtx_unlock(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @NG_NODE_UNREF(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @ng_rmnode_self(i32* %52)
  br label %58

54:                                               ; preds = %36, %31
  %55 = load %struct.ngsock*, %struct.ngsock** %2, align 8
  %56 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %55, i32 0, i32 1
  %57 = call i32 @mtx_unlock(i32* %56)
  br label %58

58:                                               ; preds = %16, %54, %41
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @hashdestroy(i32, i32, i32) #1

declare dso_local i32 @free(%struct.ngsock*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @NG_NODE_UNREF(i32*) #1

declare dso_local i32 @ng_rmnode_self(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
