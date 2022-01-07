; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_freeconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_freeconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i64, i64*, i64, i64, i64, i64, i64, i64, i64 }

@MAXARGV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.servtab*)* @freeconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeconfig(%struct.servtab* %0) #0 {
  %2 = alloca %struct.servtab*, align 8
  %3 = alloca i32, align 4
  store %struct.servtab* %0, %struct.servtab** %2, align 8
  %4 = load %struct.servtab*, %struct.servtab** %2, align 8
  %5 = getelementptr inbounds %struct.servtab, %struct.servtab* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.servtab*, %struct.servtab** %2, align 8
  %10 = getelementptr inbounds %struct.servtab, %struct.servtab* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @free(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.servtab*, %struct.servtab** %2, align 8
  %15 = getelementptr inbounds %struct.servtab, %struct.servtab* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.servtab*, %struct.servtab** %2, align 8
  %20 = getelementptr inbounds %struct.servtab, %struct.servtab* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @free(i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.servtab*, %struct.servtab** %2, align 8
  %25 = getelementptr inbounds %struct.servtab, %struct.servtab* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.servtab*, %struct.servtab** %2, align 8
  %30 = getelementptr inbounds %struct.servtab, %struct.servtab* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @free(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.servtab*, %struct.servtab** %2, align 8
  %35 = getelementptr inbounds %struct.servtab, %struct.servtab* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.servtab*, %struct.servtab** %2, align 8
  %40 = getelementptr inbounds %struct.servtab, %struct.servtab* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @free(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.servtab*, %struct.servtab** %2, align 8
  %45 = getelementptr inbounds %struct.servtab, %struct.servtab* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.servtab*, %struct.servtab** %2, align 8
  %50 = getelementptr inbounds %struct.servtab, %struct.servtab* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @free(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.servtab*, %struct.servtab** %2, align 8
  %55 = getelementptr inbounds %struct.servtab, %struct.servtab* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.servtab*, %struct.servtab** %2, align 8
  %60 = getelementptr inbounds %struct.servtab, %struct.servtab* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @free(i64 %61)
  br label %63

63:                                               ; preds = %58, %53
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %87, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @MAXARGV, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load %struct.servtab*, %struct.servtab** %2, align 8
  %70 = getelementptr inbounds %struct.servtab, %struct.servtab* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.servtab*, %struct.servtab** %2, align 8
  %79 = getelementptr inbounds %struct.servtab, %struct.servtab* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @free(i64 %84)
  br label %86

86:                                               ; preds = %77, %68
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %64

90:                                               ; preds = %64
  %91 = load %struct.servtab*, %struct.servtab** %2, align 8
  %92 = call i32 @free_connlist(%struct.servtab* %91)
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i32 @free_connlist(%struct.servtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
