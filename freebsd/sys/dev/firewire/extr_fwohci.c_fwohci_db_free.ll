; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_db_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_dbch = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fwohcidb_tr = type { i32*, i32* }

@FWOHCI_DBCH_INIT = common dso_local global i32 0, align 4
@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_dbch*)* @fwohci_db_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_db_free(%struct.fwohci_dbch* %0) #0 {
  %2 = alloca %struct.fwohci_dbch*, align 8
  %3 = alloca %struct.fwohcidb_tr*, align 8
  %4 = alloca i32, align 4
  store %struct.fwohci_dbch* %0, %struct.fwohci_dbch** %2, align 8
  %5 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %6 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FWOHCI_DBCH_INIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %14 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %13, i32 0, i32 2
  %15 = call %struct.fwohcidb_tr* @STAILQ_FIRST(i32* %14)
  store %struct.fwohcidb_tr* %15, %struct.fwohcidb_tr** %3, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %67, %12
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %19 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %16
  %23 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %24 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %32 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %37 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %40 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %43 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %46 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fwdma_free_size(i32 %38, i32* %41, i32* %44, i32 %48)
  %50 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %51 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %66

52:                                               ; preds = %30, %22
  %53 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %54 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %59 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %62 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_dmamap_destroy(i32 %60, i32* %63)
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65, %35
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %69 = load i32, i32* @link, align 4
  %70 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %68, i32 %69)
  store %struct.fwohcidb_tr* %70, %struct.fwohcidb_tr** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %16

73:                                               ; preds = %16
  %74 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %75 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %77 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %76, i32 0, i32 2
  %78 = call %struct.fwohcidb_tr* @STAILQ_FIRST(i32* %77)
  store %struct.fwohcidb_tr* %78, %struct.fwohcidb_tr** %3, align 8
  %79 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %80 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fwdma_free_multiseg(i32 %81)
  %83 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %3, align 8
  %84 = load i32, i32* @M_FW, align 4
  %85 = call i32 @free(%struct.fwohcidb_tr* %83, i32 %84)
  %86 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %87 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %86, i32 0, i32 2
  %88 = call i32 @STAILQ_INIT(i32* %87)
  %89 = load i32, i32* @FWOHCI_DBCH_INIT, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %2, align 8
  %92 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %73, %11
  ret void
}

declare dso_local %struct.fwohcidb_tr* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @fwdma_free_size(i32, i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @fwdma_free_multiseg(i32) #1

declare dso_local i32 @free(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
