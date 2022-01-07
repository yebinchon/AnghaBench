; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_unlink_src_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_unlink_src_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_src_node = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@V_pf_srchash = common dso_local global i32* null, align 8
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_unlink_src_node(%struct.pf_src_node* %0) #0 {
  %2 = alloca %struct.pf_src_node*, align 8
  store %struct.pf_src_node* %0, %struct.pf_src_node** %2, align 8
  %3 = load i32*, i32** @V_pf_srchash, align 8
  %4 = load %struct.pf_src_node*, %struct.pf_src_node** %2, align 8
  %5 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %4, i32 0, i32 2
  %6 = load %struct.pf_src_node*, %struct.pf_src_node** %2, align 8
  %7 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @pf_hashsrc(i32* %5, i32 %8)
  %10 = getelementptr inbounds i32, i32* %3, i64 %9
  %11 = call i32 @PF_HASHROW_ASSERT(i32* %10)
  %12 = load %struct.pf_src_node*, %struct.pf_src_node** %2, align 8
  %13 = load i32, i32* @entry, align 4
  %14 = call i32 @LIST_REMOVE(%struct.pf_src_node* %12, i32 %13)
  %15 = load %struct.pf_src_node*, %struct.pf_src_node** %2, align 8
  %16 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.pf_src_node*, %struct.pf_src_node** %2, align 8
  %22 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @counter_u64_add(i32 %26, i32 -1)
  br label %28

28:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @PF_HASHROW_ASSERT(i32*) #1

declare dso_local i64 @pf_hashsrc(i32*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.pf_src_node*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
