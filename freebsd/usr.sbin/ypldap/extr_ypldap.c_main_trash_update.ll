; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_main_trash_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_main_trash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env = type { i32, %struct.userent*, %struct.userent* }
%struct.userent = type { %struct.userent*, %struct.userent*, %struct.userent* }
%struct.groupent = type { %struct.groupent*, %struct.groupent*, %struct.groupent* }

@user_name_tree = common dso_local global i32 0, align 4
@group_name_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_trash_update(%struct.env* %0) #0 {
  %2 = alloca %struct.env*, align 8
  %3 = alloca %struct.userent*, align 8
  %4 = alloca %struct.groupent*, align 8
  store %struct.env* %0, %struct.env** %2, align 8
  %5 = load %struct.env*, %struct.env** %2, align 8
  %6 = getelementptr inbounds %struct.env, %struct.env* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  br label %7

7:                                                ; preds = %13, %1
  %8 = load %struct.env*, %struct.env** %2, align 8
  %9 = getelementptr inbounds %struct.env, %struct.env* %8, i32 0, i32 2
  %10 = load %struct.userent*, %struct.userent** %9, align 8
  %11 = call %struct.userent* @RB_ROOT(%struct.userent* %10)
  store %struct.userent* %11, %struct.userent** %3, align 8
  %12 = icmp ne %struct.userent* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load i32, i32* @user_name_tree, align 4
  %15 = load %struct.env*, %struct.env** %2, align 8
  %16 = getelementptr inbounds %struct.env, %struct.env* %15, i32 0, i32 2
  %17 = load %struct.userent*, %struct.userent** %16, align 8
  %18 = load %struct.userent*, %struct.userent** %3, align 8
  %19 = call i32 @RB_REMOVE(i32 %14, %struct.userent* %17, %struct.userent* %18)
  %20 = load %struct.userent*, %struct.userent** %3, align 8
  %21 = getelementptr inbounds %struct.userent, %struct.userent* %20, i32 0, i32 2
  %22 = load %struct.userent*, %struct.userent** %21, align 8
  %23 = call i32 @free(%struct.userent* %22)
  %24 = load %struct.userent*, %struct.userent** %3, align 8
  %25 = getelementptr inbounds %struct.userent, %struct.userent* %24, i32 0, i32 1
  %26 = load %struct.userent*, %struct.userent** %25, align 8
  %27 = call i32 @free(%struct.userent* %26)
  %28 = load %struct.userent*, %struct.userent** %3, align 8
  %29 = call i32 @free(%struct.userent* %28)
  br label %7

30:                                               ; preds = %7
  %31 = load %struct.env*, %struct.env** %2, align 8
  %32 = getelementptr inbounds %struct.env, %struct.env* %31, i32 0, i32 2
  %33 = load %struct.userent*, %struct.userent** %32, align 8
  %34 = call i32 @free(%struct.userent* %33)
  %35 = load %struct.env*, %struct.env** %2, align 8
  %36 = getelementptr inbounds %struct.env, %struct.env* %35, i32 0, i32 2
  store %struct.userent* null, %struct.userent** %36, align 8
  br label %37

37:                                               ; preds = %44, %30
  %38 = load %struct.env*, %struct.env** %2, align 8
  %39 = getelementptr inbounds %struct.env, %struct.env* %38, i32 0, i32 1
  %40 = load %struct.userent*, %struct.userent** %39, align 8
  %41 = call %struct.userent* @RB_ROOT(%struct.userent* %40)
  %42 = bitcast %struct.userent* %41 to %struct.groupent*
  store %struct.groupent* %42, %struct.groupent** %4, align 8
  %43 = icmp ne %struct.groupent* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load i32, i32* @group_name_tree, align 4
  %46 = load %struct.env*, %struct.env** %2, align 8
  %47 = getelementptr inbounds %struct.env, %struct.env* %46, i32 0, i32 1
  %48 = load %struct.userent*, %struct.userent** %47, align 8
  %49 = load %struct.groupent*, %struct.groupent** %4, align 8
  %50 = bitcast %struct.groupent* %49 to %struct.userent*
  %51 = call i32 @RB_REMOVE(i32 %45, %struct.userent* %48, %struct.userent* %50)
  %52 = load %struct.groupent*, %struct.groupent** %4, align 8
  %53 = getelementptr inbounds %struct.groupent, %struct.groupent* %52, i32 0, i32 0
  %54 = load %struct.groupent*, %struct.groupent** %53, align 8
  %55 = bitcast %struct.groupent* %54 to %struct.userent*
  %56 = call i32 @free(%struct.userent* %55)
  %57 = load %struct.groupent*, %struct.groupent** %4, align 8
  %58 = bitcast %struct.groupent* %57 to %struct.userent*
  %59 = call i32 @free(%struct.userent* %58)
  br label %37

60:                                               ; preds = %37
  %61 = load %struct.env*, %struct.env** %2, align 8
  %62 = getelementptr inbounds %struct.env, %struct.env* %61, i32 0, i32 1
  %63 = load %struct.userent*, %struct.userent** %62, align 8
  %64 = call i32 @free(%struct.userent* %63)
  %65 = load %struct.env*, %struct.env** %2, align 8
  %66 = getelementptr inbounds %struct.env, %struct.env* %65, i32 0, i32 1
  store %struct.userent* null, %struct.userent** %66, align 8
  ret void
}

declare dso_local %struct.userent* @RB_ROOT(%struct.userent*) #1

declare dso_local i32 @RB_REMOVE(i32, %struct.userent*, %struct.userent*) #1

declare dso_local i32 @free(%struct.userent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
