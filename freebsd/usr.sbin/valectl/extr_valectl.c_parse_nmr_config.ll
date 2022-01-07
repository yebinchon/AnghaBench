; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/valectl/extr_valectl.c_parse_nmr_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/valectl/extr_valectl.c_parse_nmr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ignored config: %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"txr %d txd %d rxr %d rxd %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nmreq*)* @parse_nmr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_nmr_config(i8* %0, %struct.nmreq* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nmreq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.nmreq* %1, %struct.nmreq** %4, align 8
  %9 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %10 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %12 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %14 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %13, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %16 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %2
  br label %80

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strtok(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %60, %24
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %56 [
    i32 0, label %36
    i32 1, label %42
    i32 2, label %46
    i32 3, label %52
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %39 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %41 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  br label %59

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %45 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %59

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %49 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %51 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  br label %59

52:                                               ; preds = %32
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %55 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %32
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %52, %46, %42, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %63, i8** %6, align 8
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %66 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %69 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %72 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %75 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %64, %23
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
