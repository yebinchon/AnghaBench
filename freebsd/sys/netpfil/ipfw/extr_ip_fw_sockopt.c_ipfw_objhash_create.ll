; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32, i32, i32, i32, i32, i32, %struct.namedobjects_head*, %struct.namedobjects_head* }
%struct.namedobjects_head = type { i32 }

@NAMEDOBJ_HASH_SIZE = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@objhash_hash_name = common dso_local global i32 0, align 4
@objhash_cmp_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.namedobj_instance* @ipfw_objhash_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.namedobj_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @NAMEDOBJ_HASH_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 40, %8
  %10 = load i32, i32* @NAMEDOBJ_HASH_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = add i64 %9, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @M_IPFW, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.namedobj_instance* @malloc(i64 %14, i32 %15, i32 %18)
  store %struct.namedobj_instance* %19, %struct.namedobj_instance** %3, align 8
  %20 = load i32, i32* @NAMEDOBJ_HASH_SIZE, align 4
  %21 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %22 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @NAMEDOBJ_HASH_SIZE, align 4
  %24 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %25 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %27 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %26, i64 1
  %28 = bitcast %struct.namedobj_instance* %27 to %struct.namedobjects_head*
  %29 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %30 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %29, i32 0, i32 7
  store %struct.namedobjects_head* %28, %struct.namedobjects_head** %30, align 8
  %31 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %32 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %31, i32 0, i32 7
  %33 = load %struct.namedobjects_head*, %struct.namedobjects_head** %32, align 8
  %34 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %35 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.namedobjects_head, %struct.namedobjects_head* %33, i64 %37
  %39 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %40 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %39, i32 0, i32 6
  store %struct.namedobjects_head* %38, %struct.namedobjects_head** %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %55, %1
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %44 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %49 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %48, i32 0, i32 7
  %50 = load %struct.namedobjects_head*, %struct.namedobjects_head** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.namedobjects_head, %struct.namedobjects_head* %50, i64 %52
  %54 = call i32 @TAILQ_INIT(%struct.namedobjects_head* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %41

58:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %62 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %67 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %66, i32 0, i32 6
  %68 = load %struct.namedobjects_head*, %struct.namedobjects_head** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.namedobjects_head, %struct.namedobjects_head* %68, i64 %70
  %72 = call i32 @TAILQ_INIT(%struct.namedobjects_head* %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load i32, i32* @objhash_hash_name, align 4
  %78 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %79 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @objhash_cmp_name, align 4
  %81 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %82 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %85 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %84, i32 0, i32 3
  %86 = bitcast i32* %85 to i8*
  %87 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %88 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %87, i32 0, i32 2
  %89 = call i32 @ipfw_objhash_bitmap_alloc(i32 %83, i8* %86, i32* %88)
  %90 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  ret %struct.namedobj_instance* %90
}

declare dso_local %struct.namedobj_instance* @malloc(i64, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.namedobjects_head*) #1

declare dso_local i32 @ipfw_objhash_bitmap_alloc(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
