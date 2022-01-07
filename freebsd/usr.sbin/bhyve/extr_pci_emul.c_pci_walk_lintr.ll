; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_walk_lintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_walk_lintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { %struct.slotinfo* }
%struct.slotinfo = type { %struct.intxinfo* }
%struct.intxinfo = type { i64, i32, i32 }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@MAXSLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_walk_lintr(i32 %0, i32 (i32, i32, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i32, i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.businfo*, align 8
  %8 = alloca %struct.slotinfo*, align 8
  %9 = alloca %struct.intxinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 (i32, i32, i32, i32, i32, i8*)* %1, i32 (i32, i32, i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.businfo*, %struct.businfo** %12, i64 %14
  %16 = load %struct.businfo*, %struct.businfo** %15, align 8
  store %struct.businfo* %16, %struct.businfo** %7, align 8
  %17 = icmp eq %struct.businfo* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %67

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %64, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MAXSLOTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load %struct.businfo*, %struct.businfo** %7, align 8
  %26 = getelementptr inbounds %struct.businfo, %struct.businfo* %25, i32 0, i32 0
  %27 = load %struct.slotinfo*, %struct.slotinfo** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %27, i64 %29
  store %struct.slotinfo* %30, %struct.slotinfo** %8, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %60, %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load %struct.slotinfo*, %struct.slotinfo** %8, align 8
  %36 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %35, i32 0, i32 0
  %37 = load %struct.intxinfo*, %struct.intxinfo** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %37, i64 %39
  store %struct.intxinfo* %40, %struct.intxinfo** %9, align 8
  %41 = load %struct.intxinfo*, %struct.intxinfo** %9, align 8
  %42 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %34
  %46 = load i32 (i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i8*)** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.intxinfo*, %struct.intxinfo** %9, align 8
  %52 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intxinfo*, %struct.intxinfo** %9, align 8
  %55 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 %46(i32 %47, i32 %48, i32 %50, i32 %53, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %45, %34
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %31

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %20

67:                                               ; preds = %18, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
