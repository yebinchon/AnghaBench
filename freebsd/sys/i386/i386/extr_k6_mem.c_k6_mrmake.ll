; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mrmake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mrmake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_desc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MDF_WRITECOMBINE = common dso_local global i32 0, align 4
@MDF_UNCACHEABLE = common dso_local global i32 0, align 4
@MDF_FORCE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_range_desc*, i32*)* @k6_mrmake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k6_mrmake(%struct.mem_range_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_range_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_range_desc* %0, %struct.mem_range_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %11 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 131071
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %19 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 131072
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %24 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @powerof2(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %87

30:                                               ; preds = %22
  %31 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %32 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MDF_WRITECOMBINE, align 4
  %35 = load i32, i32* @MDF_UNCACHEABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MDF_FORCE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %33, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %30
  %45 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %46 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 17
  %49 = call i32 @ffs(i32 %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %59, %44
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 15
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %64 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MDF_WRITECOMBINE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %7, align 4
  %71 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %72 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MDF_UNCACHEABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %8, align 4
  %79 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %80 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @K6_REG_MAKE(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %62, %42, %28, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @K6_REG_MAKE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
