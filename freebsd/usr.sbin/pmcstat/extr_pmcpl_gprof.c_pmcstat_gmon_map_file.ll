; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcstat_gmon_map_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcstat_gmon_map_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_gmonfile = type { i32, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ERROR: cannot open \22%s\22\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ERROR: cannot map \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcstat_gmonfile*)* @pmcstat_gmon_map_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcstat_gmon_map_file(%struct.pmcstat_gmonfile* %0) #0 {
  %2 = alloca %struct.pmcstat_gmonfile*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.pmcstat_gmonfile* %0, %struct.pmcstat_gmonfile** %2, align 8
  %5 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %2, align 8
  %6 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @pmcstat_string_unintern(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = load i32, i32* @O_NOFOLLOW, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %9, i32 %12, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EX_OSERR, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @err(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %2, align 8
  %21 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @PROT_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAP_NOSYNC, align 4
  %27 = load i32, i32* @MAP_SHARED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @mmap(i32* null, i32 %22, i32 %25, i32 %28, i32 %29, i32 0)
  %31 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %2, align 8
  %32 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %2, align 8
  %34 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAP_FAILED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %19
  %39 = load i32, i32* @EX_OSERR, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @err(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %19
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @close(i32 %43)
  ret void
}

declare dso_local i8* @pmcstat_string_unintern(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
