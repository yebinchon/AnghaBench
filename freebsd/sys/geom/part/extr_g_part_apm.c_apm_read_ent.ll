; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_apm_read_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_apm_read_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32 }
%struct.apm_ent = type { i32, i32, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, i32, %struct.apm_ent*, i32)* @apm_read_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_read_ent(%struct.g_consumer* %0, i32 %1, %struct.apm_ent* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.apm_ent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.apm_ent* %2, %struct.apm_ent** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %14 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %13, i32 0, i32 0
  %15 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  store %struct.g_provider* %15, %struct.g_provider** %10, align 8
  %16 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %17 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @g_read_data(%struct.g_consumer* %16, i32 %21, i32 %24, i32* %12)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %73

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @swab(i8* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @be16dec(i8* %40)
  %42 = load %struct.apm_ent*, %struct.apm_ent** %8, align 8
  %43 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = call i8* @be32dec(i8* %45)
  %47 = load %struct.apm_ent*, %struct.apm_ent** %8, align 8
  %48 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = call i8* @be32dec(i8* %50)
  %52 = load %struct.apm_ent*, %struct.apm_ent** %8, align 8
  %53 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 12
  %56 = call i8* @be32dec(i8* %55)
  %57 = load %struct.apm_ent*, %struct.apm_ent** %8, align 8
  %58 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 16
  %61 = load %struct.apm_ent*, %struct.apm_ent** %8, align 8
  %62 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bcopy(i8* %60, i32 %63, i32 4)
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 48
  %67 = load %struct.apm_ent*, %struct.apm_ent** %8, align 8
  %68 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bcopy(i8* %66, i32 %69, i32 4)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @g_free(i8* %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %39, %28
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i8* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @swab(i8*, i32) #1

declare dso_local i32 @be16dec(i8*) #1

declare dso_local i8* @be32dec(i8*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
