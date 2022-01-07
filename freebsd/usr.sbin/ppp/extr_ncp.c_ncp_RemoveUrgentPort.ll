; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_RemoveUrgentPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_RemoveUrgentPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_range = type { i32, i64* }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%u: Port not set to urgent\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_RemoveUrgentPort(%struct.port_range* %0, i64 %1) #0 {
  %3 = alloca %struct.port_range*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.port_range* %0, %struct.port_range** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %59, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.port_range*, %struct.port_range** %3, align 8
  %9 = getelementptr inbounds %struct.port_range, %struct.port_range* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %6
  %13 = load %struct.port_range*, %struct.port_range** %3, align 8
  %14 = getelementptr inbounds %struct.port_range, %struct.port_range* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  %25 = load %struct.port_range*, %struct.port_range** %3, align 8
  %26 = getelementptr inbounds %struct.port_range, %struct.port_range* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = load %struct.port_range*, %struct.port_range** %3, align 8
  %31 = getelementptr inbounds %struct.port_range, %struct.port_range* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load %struct.port_range*, %struct.port_range** %3, align 8
  %37 = getelementptr inbounds %struct.port_range, %struct.port_range* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load %struct.port_range*, %struct.port_range** %3, align 8
  %44 = getelementptr inbounds %struct.port_range, %struct.port_range* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sub i32 %45, %46
  %48 = sub i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memmove(i64* %35, i64* %42, i32 %51)
  br label %53

53:                                               ; preds = %29, %22
  %54 = load %struct.port_range*, %struct.port_range** %3, align 8
  %55 = getelementptr inbounds %struct.port_range, %struct.port_range* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %72

58:                                               ; preds = %12
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %6

62:                                               ; preds = %6
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.port_range*, %struct.port_range** %3, align 8
  %65 = getelementptr inbounds %struct.port_range, %struct.port_range* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @LogWARN, align 4
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @log_Printf(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %53, %68, %62
  ret void
}

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
