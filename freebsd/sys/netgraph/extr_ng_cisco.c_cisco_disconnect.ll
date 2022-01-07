; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_cisco.c_cisco_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_cisco.c_cisco_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.protoent = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cisco_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cisco_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.protoent*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @NG_HOOK_NODE(i32 %5)
  %7 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.protoent* @NG_HOOK_PRIVATE(i32 %8)
  store %struct.protoent* %9, %struct.protoent** %4, align 8
  %10 = icmp ne %struct.protoent* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.protoent*, %struct.protoent** %4, align 8
  %13 = getelementptr inbounds %struct.protoent, %struct.protoent* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.protoent*, %struct.protoent** %4, align 8
  %15 = getelementptr inbounds %struct.protoent, %struct.protoent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 65535
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @NG_HOOK_NODE(i32 %21)
  %23 = call i32 @ng_uncallout(i32* %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @NG_HOOK_NODE(i32 %26)
  %28 = call i64 @NG_NODE_NUMHOOKS(i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @NG_HOOK_NODE(i32 %31)
  %33 = call i64 @NG_NODE_IS_VALID(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @NG_HOOK_NODE(i32 %36)
  %38 = call i32 @ng_rmnode_self(i32 %37)
  br label %39

39:                                               ; preds = %35, %30, %25
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.protoent* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @ng_uncallout(i32*, i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
