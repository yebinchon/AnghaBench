; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@cpuid = common dso_local global i32 0, align 4
@num_tlbentries = common dso_local global i32 0, align 4
@MIPS_MAX_TLB_ENTRIES = common dso_local global i32 0, align 4
@tlb_state = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_save() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpuid, align 4
  %5 = call i32 @PCPU_GET(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @num_tlbentries, align 4
  %7 = load i32, i32* @MIPS_MAX_TLB_ENTRIES, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @MIPS_MAX_TLB_ENTRIES, align 4
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @num_tlbentries, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = call i32 (...) @mips_rd_wired()
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tlb_state, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %14, i32* %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %72, %13
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @mips_wr_index(i32 %25)
  %27 = call i32 (...) @tlb_read()
  %28 = call i32 (...) @mips_rd_entryhi()
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tlb_state, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %2, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %28, i32* %38, align 4
  %39 = call i32 (...) @mips_rd_pagemask()
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tlb_state, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %2, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %39, i32* %49, align 4
  %50 = call i32 (...) @mips_rd_entrylo0()
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tlb_state, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %2, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %50, i32* %60, align 4
  %61 = call i32 (...) @mips_rd_entrylo1()
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tlb_state, align 8
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %2, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %61, i32* %71, align 4
  br label %72

72:                                               ; preds = %24
  %73 = load i32, i32* %2, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %20

75:                                               ; preds = %20
  ret void
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @mips_rd_wired(...) #1

declare dso_local i32 @mips_wr_index(i32) #1

declare dso_local i32 @tlb_read(...) #1

declare dso_local i32 @mips_rd_entryhi(...) #1

declare dso_local i32 @mips_rd_pagemask(...) #1

declare dso_local i32 @mips_rd_entrylo0(...) #1

declare dso_local i32 @mips_rd_entrylo1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
