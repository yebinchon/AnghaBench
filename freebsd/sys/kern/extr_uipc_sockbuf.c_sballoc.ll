; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sballoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sballoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i32, i32, i32, i32, %struct.mbuf*, i32 }
%struct.mbuf = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@M_NOTREADY = common dso_local global i32 0, align 4
@M_BLOCKED = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i64 0, align 8
@MT_OOBDATA = common dso_local global i64 0, align 8
@MSIZE = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sballoc(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %6 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %5)
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %11 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 8
  %16 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %17 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %16, i32 0, i32 5
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %19 = icmp eq %struct.mbuf* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @M_NOTREADY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %30 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %29, i32 0, i32 5
  store %struct.mbuf* %28, %struct.mbuf** %30, align 8
  br label %41

31:                                               ; preds = %20
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  br label %41

41:                                               ; preds = %31, %27
  br label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @M_BLOCKED, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %41
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MT_DATA, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MT_OOBDATA, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %65 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  br label %70

70:                                               ; preds = %60, %54, %48
  %71 = load i64, i64* @MSIZE, align 8
  %72 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %73 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %79 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @M_EXT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %70
  %89 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %94 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %100 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %88, %70
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
