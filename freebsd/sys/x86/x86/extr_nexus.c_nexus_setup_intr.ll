; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"nexus_setup_intr: NULL irq resource!\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32, void (i8*)*, i8*, i8**)* @nexus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32 %4, void (i8*)* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca void (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store void (i8*)* %5, void (i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = load %struct.resource*, %struct.resource** %12, align 8
  %21 = icmp eq %struct.resource* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %8
  %25 = load i8**, i8*** %17, align 8
  store i8* null, i8** %25, align 8
  %26 = load %struct.resource*, %struct.resource** %12, align 8
  %27 = call i32 @rman_get_flags(%struct.resource* %26)
  %28 = load i32, i32* @RF_SHAREABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @INTR_EXCL, align 4
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.resource*, %struct.resource** %12, align 8
  %37 = call i32 @rman_activate_resource(%struct.resource* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %9, align 4
  br label %68

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @bus_get_domain(i32 %43, i32* %19)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @device_get_nameunit(i32 %48)
  %50 = load %struct.resource*, %struct.resource** %12, align 8
  %51 = call i32 @rman_get_start(%struct.resource* %50)
  %52 = load i32, i32* %14, align 4
  %53 = load void (i8*)*, void (i8*)** %15, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i8**, i8*** %17, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @intr_add_handler(i32 %49, i32 %51, i32 %52, void (i8*)* %53, i8* %54, i32 %55, i8** %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.resource*, %struct.resource** %12, align 8
  %63 = load i8**, i8*** %17, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @rman_set_irq_cookie(%struct.resource* %62, i8* %64)
  br label %66

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %40
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i64 @bus_get_domain(i32, i32*) #1

declare dso_local i32 @intr_add_handler(i32, i32, i32, void (i8*)*, i8*, i32, i8**, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_set_irq_cookie(%struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
