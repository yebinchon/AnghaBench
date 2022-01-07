; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_prtrack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_prtrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cd_toc_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@msf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%2d:%02d.%02d  \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"       -  %6d       -      -\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%2d:%02d.%02d  %6d  %6d  %5s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cd_toc_entry*, i32)* @prtrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prtrack(%struct.cd_toc_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.cd_toc_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cd_toc_entry* %0, %struct.cd_toc_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* @msf, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %15 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %20 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %25 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %28)
  %30 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %31 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %36 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %41 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @msf2lba(i32 %34, i32 %39, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %58

46:                                               ; preds = %2
  %47 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %48 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @lba2msf(i32 %52, i32* %8, i32* %9, i32* %10)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %13
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %114

64:                                               ; preds = %58
  %65 = load i64, i64* @msf, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %69 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %68, i64 1
  %70 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %75 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %74, i64 1
  %76 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %81 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %80, i64 1
  %82 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @msf2lba(i32 %73, i32 %79, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %94

87:                                               ; preds = %64
  %88 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %89 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %88, i64 1
  %90 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ntohl(i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %67
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %98, 150
  %100 = call i32 @lba2msf(i32 %99, i32* %8, i32* %9, i32* %10)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.cd_toc_entry*, %struct.cd_toc_entry** %3, align 8
  %107 = getelementptr inbounds %struct.cd_toc_entry, %struct.cd_toc_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %113 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i8* %112)
  br label %114

114:                                              ; preds = %94, %61
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @msf2lba(i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @lba2msf(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
