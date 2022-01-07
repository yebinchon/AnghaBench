; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_dsdt_load_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_dsdt_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@acpi_mem_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"opening %s\00", align 1
@maplist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fstat %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mmap %s\00", align 1
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @dsdt_load_file(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* @acpi_mem_fd, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 @LIST_INIT(i32* @maplist)
  %16 = load i32, i32* @acpi_mem_fd, align 4
  %17 = call i32 @fstat(i32 %16, %struct.stat* %6)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PROT_READ, align 4
  %26 = load i32, i32* @MAP_PRIVATE, align 4
  %27 = load i32, i32* @acpi_mem_fd, align 4
  %28 = call i32* @mmap(i32 0, i32 %24, i32 %25, i32 %26, i32 %27, i32 0)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32*, i32** %5, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %39 = call i64 @strncmp(i32* %37, i32 %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @acpi_checksum(%struct.TYPE_4__* %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %34
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %51

49:                                               ; preds = %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %2, align 8
  br label %51

51:                                               ; preds = %49, %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %52
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strncmp(i32*, i32, i32) #1

declare dso_local i64 @acpi_checksum(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
