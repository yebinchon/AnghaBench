; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_dump_pmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_dump_pmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_context = type { i32, i32, i32 }
%struct.lpte = type { i32, i32 }

@H_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*, i32*)* @mphyp_dump_pmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mphyp_dump_pmap(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dump_context*, align 8
  %11 = alloca %struct.lpte, align 4
  %12 = alloca %struct.lpte*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.dump_context*
  store %struct.dump_context* %18, %struct.dump_context** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.lpte*
  store %struct.lpte* %20, %struct.lpte** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.dump_context*, %struct.dump_context** %10, align 8
  %22 = getelementptr inbounds %struct.dump_context, %struct.dump_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.dump_context*, %struct.dump_context** %10, align 8
  %27 = getelementptr inbounds %struct.dump_context, %struct.dump_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 8
  %31 = add i64 %25, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.dump_context*, %struct.dump_context** %10, align 8
  %35 = getelementptr inbounds %struct.dump_context, %struct.dump_context* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MIN(i32 %33, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %75

49:                                               ; preds = %4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32, i32* @H_READ, align 4
  %56 = load i32, i32* %15, align 4
  %57 = getelementptr inbounds %struct.lpte, %struct.lpte* %11, i32 0, i32 1
  %58 = getelementptr inbounds %struct.lpte, %struct.lpte* %11, i32 0, i32 0
  %59 = call i32 @phyp_pft_hcall(i32 %55, i32 0, i32 %56, i32 0, i32 0, i32* %57, i32* %58, i32* %14)
  %60 = load %struct.lpte*, %struct.lpte** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.lpte, %struct.lpte* %60, i64 %63
  %65 = bitcast %struct.lpte* %64 to i8*
  %66 = bitcast %struct.lpte* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 8, i1 false)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.dump_context*, %struct.dump_context** %10, align 8
  %73 = getelementptr inbounds %struct.dump_context, %struct.dump_context* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %5, align 8
  br label %75

75:                                               ; preds = %70, %48
  %76 = load i8*, i8** %5, align 8
  ret i8* %76
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @phyp_pft_hcall(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
