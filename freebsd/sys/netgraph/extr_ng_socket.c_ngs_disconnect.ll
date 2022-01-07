; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngsock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hookpriv = type { i32 }

@next = common dso_local global i32 0, align 4
@M_NETGRAPH_SOCK = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@NGS_FLAG_NOLINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ngs_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngs_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngsock*, align 8
  %5 = alloca %struct.hookpriv*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @NG_HOOK_NODE(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ngsock* @NG_NODE_PRIVATE(i32 %8)
  store %struct.ngsock* %9, %struct.ngsock** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.hookpriv* @NG_HOOK_PRIVATE(i32 %10)
  store %struct.hookpriv* %11, %struct.hookpriv** %5, align 8
  %12 = load %struct.hookpriv*, %struct.hookpriv** %5, align 8
  %13 = load i32, i32* @next, align 4
  %14 = call i32 @LIST_REMOVE(%struct.hookpriv* %12, i32 %13)
  %15 = load %struct.hookpriv*, %struct.hookpriv** %5, align 8
  %16 = load i32, i32* @M_NETGRAPH_SOCK, align 4
  %17 = call i32 @free(%struct.hookpriv* %15, i32 %16)
  %18 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %19 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %1
  %23 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %24 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @NG_NODE_NUMHOOKS(i32 %30)
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* @SS_ISCONNECTED, align 4
  %35 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %36 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  br label %54

43:                                               ; preds = %29
  %44 = load i32, i32* @SS_ISCONNECTED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %47 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %45
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43, %33
  br label %55

55:                                               ; preds = %54, %22, %1
  %56 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %57 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NGS_FLAG_NOLINGER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @NG_NODE_NUMHOOKS(i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @NG_NODE_IS_VALID(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ng_rmnode_self(i32 %71)
  br label %73

73:                                               ; preds = %70, %66, %62, %55
  ret i32 0
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.ngsock* @NG_NODE_PRIVATE(i32) #1

declare dso_local %struct.hookpriv* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.hookpriv*, i32) #1

declare dso_local i32 @free(%struct.hookpriv*, i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
