; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_attach_args = type { i32, i32, i32, i32, i32, i32 }
%struct.cfdata = type { i64 }

@TPM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_match(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.isa_attach_args*, align 8
  %9 = alloca %struct.cfdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.isa_attach_args*
  store %struct.isa_attach_args* %14, %struct.isa_attach_args** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.cfdata*
  store %struct.cfdata* %16, %struct.cfdata** %9, align 8
  %17 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %18 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cfdata*, %struct.cfdata** %9, align 8
  %21 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

25:                                               ; preds = %3
  %26 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %27 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %30 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @tpm_legacy_probe(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %36 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %35, i32 0, i32 0
  store i32 2, i32* %36, align 4
  store i32 1, i32* %4, align 4
  br label %69

37:                                               ; preds = %25
  %38 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %39 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %69

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %46 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TPM_SIZE, align 4
  %49 = call i64 @bus_space_map(i32 %44, i32 %47, i32 %48, i32 0, i32* %11)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %69

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @tpm_tis12_probe(i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %59 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* @TPM_SIZE, align 4
  %61 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %62 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @TPM_SIZE, align 4
  %67 = call i32 @bus_space_unmap(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %51, %42, %34, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @tpm_legacy_probe(i32, i32) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @tpm_tis12_probe(i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
