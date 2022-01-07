; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_signature_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_signature_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i64, i64, i32 }
%struct.pe_directory_entry = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Certificate Directory\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"signature size is 0, but its RVA is %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"signature RVA is 0, but its size is %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @signature_size(%struct.executable* %0) #0 {
  %2 = alloca %struct.executable*, align 8
  %3 = alloca %struct.pe_directory_entry*, align 8
  store %struct.executable* %0, %struct.executable** %2, align 8
  %4 = load %struct.executable*, %struct.executable** %2, align 8
  %5 = load %struct.executable*, %struct.executable** %2, align 8
  %6 = getelementptr inbounds %struct.executable, %struct.executable* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.executable*, %struct.executable** %2, align 8
  %9 = getelementptr inbounds %struct.executable, %struct.executable* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @range_check(%struct.executable* %4, i64 %7, i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.executable*, %struct.executable** %2, align 8
  %13 = getelementptr inbounds %struct.executable, %struct.executable* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.executable*, %struct.executable** %2, align 8
  %16 = getelementptr inbounds %struct.executable, %struct.executable* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = inttoptr i64 %18 to %struct.pe_directory_entry*
  store %struct.pe_directory_entry* %19, %struct.pe_directory_entry** %3, align 8
  %20 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %21 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %26 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %31 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %29, %24, %1
  %35 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %36 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %41 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %46 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = load %struct.pe_directory_entry*, %struct.pe_directory_entry** %3, align 8
  %51 = getelementptr inbounds %struct.pe_directory_entry, %struct.pe_directory_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  ret i64 %52
}

declare dso_local i32 @range_check(%struct.executable*, i64, i32, i8*) #1

declare dso_local i32 @warnx(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
