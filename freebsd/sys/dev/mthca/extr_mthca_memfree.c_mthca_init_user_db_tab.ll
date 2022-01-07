; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_memfree.c_mthca_init_user_db_tab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_memfree.c_mthca_init_user_db_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_user_db_table = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.mthca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mthca_user_db_table* @mthca_init_user_db_tab(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_user_db_table*, align 8
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_user_db_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %8 = call i32 @mthca_is_memfree(%struct.mthca_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mthca_user_db_table* null, %struct.mthca_user_db_table** %2, align 8
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 24
  %21 = add i64 16, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mthca_user_db_table* @kmalloc(i32 %22, i32 %23)
  store %struct.mthca_user_db_table* %24, %struct.mthca_user_db_table** %4, align 8
  %25 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %26 = icmp ne %struct.mthca_user_db_table* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %11
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.mthca_user_db_table* @ERR_PTR(i32 %29)
  store %struct.mthca_user_db_table* %30, %struct.mthca_user_db_table** %2, align 8
  br label %67

31:                                               ; preds = %11
  %32 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %33 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %32, i32 0, i32 1
  %34 = call i32 @mutex_init(i32* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %62, %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %41 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %48 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %55 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @sg_init_table(i32* %60, i32 1)
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  store %struct.mthca_user_db_table* %66, %struct.mthca_user_db_table** %2, align 8
  br label %67

67:                                               ; preds = %65, %27, %10
  %68 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %2, align 8
  ret %struct.mthca_user_db_table* %68
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local %struct.mthca_user_db_table* @kmalloc(i32, i32) #1

declare dso_local %struct.mthca_user_db_table* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
