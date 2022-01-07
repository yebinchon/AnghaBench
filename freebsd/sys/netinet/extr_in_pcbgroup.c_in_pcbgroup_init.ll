; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i64, %struct.inpcbgroup*, i32, i8*, i64 }
%struct.inpcbgroup = type { i64, i32, i8* }

@IPI_HASHFIELDS_NONE = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pcbgroup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbgroup_init(%struct.inpcbinfo* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inpcbinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcbgroup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @IPI_HASHFIELDS_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %73

14:                                               ; preds = %3
  %15 = load i32, i32* @mp_ncpus, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %73

18:                                               ; preds = %14
  %19 = load i32, i32* @mp_ncpus, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %23 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = mul i64 %24, 24
  %26 = load i32, i32* @M_PCB, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.inpcbgroup* @malloc(i64 %25, i32 %26, i32 %29)
  %31 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %32 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %31, i32 0, i32 1
  store %struct.inpcbgroup* %30, %struct.inpcbgroup** %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %35 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @M_PCB, align 4
  %38 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %39 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %38, i32 0, i32 2
  %40 = call i8* @hashinit(i32 %36, i32 %37, i32* %39)
  %41 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %42 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %70, %18
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %46 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %51 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %50, i32 0, i32 1
  %52 = load %struct.inpcbgroup*, %struct.inpcbgroup** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %52, i64 %53
  store %struct.inpcbgroup* %54, %struct.inpcbgroup** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @M_PCB, align 4
  %57 = load %struct.inpcbgroup*, %struct.inpcbgroup** %7, align 8
  %58 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %57, i32 0, i32 1
  %59 = call i8* @hashinit(i32 %55, i32 %56, i32* %58)
  %60 = load %struct.inpcbgroup*, %struct.inpcbgroup** %7, align 8
  %61 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.inpcbgroup*, %struct.inpcbgroup** %7, align 8
  %63 = call i32 @INP_GROUP_LOCK_INIT(%struct.inpcbgroup* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* @mp_ncpus, align 4
  %66 = sext i32 %65 to i64
  %67 = srem i64 %64, %66
  %68 = load %struct.inpcbgroup*, %struct.inpcbgroup** %7, align 8
  %69 = getelementptr inbounds %struct.inpcbgroup, %struct.inpcbgroup* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %49
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %43

73:                                               ; preds = %13, %17, %43
  ret void
}

declare dso_local %struct.inpcbgroup* @malloc(i64, i32, i32) #1

declare dso_local i8* @hashinit(i32, i32, i32*) #1

declare dso_local i32 @INP_GROUP_LOCK_INIT(%struct.inpcbgroup*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
