; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_write_dsdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_write_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@ACPI_SIG_SSDT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_9__*)* @write_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dsdt(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = bitcast %struct.TYPE_9__* %7 to i8*
  %12 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %66

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 16
  %24 = trunc i64 %23 to i32
  %25 = call i64 @acpi_checksum(%struct.TYPE_9__* %18, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i8*, i8** @ACPI_SIG_SSDT, align 8
  %28 = call %struct.TYPE_9__* @sdt_from_rsdt(%struct.TYPE_9__* %26, i8* %27, %struct.TYPE_9__* null)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %8, align 8
  br label %29

29:                                               ; preds = %32, %15
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 16
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %37
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 16
  %50 = trunc i64 %49 to i32
  %51 = call i64 @acpi_checksum(%struct.TYPE_9__* %44, i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i8*, i8** @ACPI_SIG_SSDT, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = call %struct.TYPE_9__* @sdt_from_rsdt(%struct.TYPE_9__* %54, i8* %55, %struct.TYPE_9__* %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %8, align 8
  br label %29

58:                                               ; preds = %29
  %59 = call i64 @acpi_checksum(%struct.TYPE_9__* %7, i32 16)
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %62
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %58, %3
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @write(i32 %67, %struct.TYPE_9__* %7, i32 16)
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 16
  %77 = trunc i64 %76 to i32
  %78 = call i32 @write(i32 %69, %struct.TYPE_9__* %71, i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %66
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = call %struct.TYPE_9__* @sdt_from_rsdt(%struct.TYPE_9__* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* null)
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %8, align 8
  br label %84

84:                                               ; preds = %87, %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = icmp ne %struct.TYPE_9__* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 16
  %96 = trunc i64 %95 to i32
  %97 = call i32 @write(i32 %88, %struct.TYPE_9__* %90, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = call %struct.TYPE_9__* @sdt_from_rsdt(%struct.TYPE_9__* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %99)
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %8, align 8
  br label %84

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101, %66
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @acpi_checksum(%struct.TYPE_9__*, i32) #2

declare dso_local %struct.TYPE_9__* @sdt_from_rsdt(%struct.TYPE_9__*, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @write(i32, %struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
