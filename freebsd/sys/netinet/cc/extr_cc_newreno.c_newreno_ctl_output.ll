; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_newreno.c_newreno_ctl_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_newreno.c_newreno_ctl_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.newreno* }
%struct.newreno = type { i32, i32 }
%struct.sockopt = type { i32, i32 }
%struct.cc_newreno_opts = type { i32, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V_cc_do_abe = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@V_newreno_beta = common dso_local global i32 0, align 4
@V_newreno_beta_ecn = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_var*, %struct.sockopt*, i8*)* @newreno_ctl_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newreno_ctl_output(%struct.cc_var* %0, %struct.sockopt* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc_var*, align 8
  %6 = alloca %struct.sockopt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.newreno*, align 8
  %9 = alloca %struct.cc_newreno_opts*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %5, align 8
  store %struct.sockopt* %1, %struct.sockopt** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %11 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EMSGSIZE, align 4
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.cc_var*, %struct.cc_var** %5, align 8
  %19 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %18, i32 0, i32 0
  %20 = load %struct.newreno*, %struct.newreno** %19, align 8
  store %struct.newreno* %20, %struct.newreno** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.cc_newreno_opts*
  store %struct.cc_newreno_opts* %22, %struct.cc_newreno_opts** %9, align 8
  %23 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %94 [
    i32 128, label %26
    i32 129, label %61
  ]

26:                                               ; preds = %17
  %27 = load %struct.newreno*, %struct.newreno** %8, align 8
  %28 = icmp eq %struct.newreno* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.cc_var*, %struct.cc_var** %5, align 8
  %31 = call %struct.newreno* @newreno_malloc(%struct.cc_var* %30)
  store %struct.newreno* %31, %struct.newreno** %8, align 8
  %32 = load %struct.newreno*, %struct.newreno** %8, align 8
  %33 = icmp eq %struct.newreno* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %97

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.cc_newreno_opts*, %struct.cc_newreno_opts** %9, align 8
  %39 = getelementptr inbounds %struct.cc_newreno_opts, %struct.cc_newreno_opts* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %58 [
    i32 131, label %41
    i32 130, label %47
  ]

41:                                               ; preds = %37
  %42 = load %struct.cc_newreno_opts*, %struct.cc_newreno_opts** %9, align 8
  %43 = getelementptr inbounds %struct.cc_newreno_opts, %struct.cc_newreno_opts* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.newreno*, %struct.newreno** %8, align 8
  %46 = getelementptr inbounds %struct.newreno, %struct.newreno* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %60

47:                                               ; preds = %37
  %48 = load i32, i32* @V_cc_do_abe, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @EACCES, align 4
  store i32 %51, i32* %4, align 4
  br label %97

52:                                               ; preds = %47
  %53 = load %struct.cc_newreno_opts*, %struct.cc_newreno_opts** %9, align 8
  %54 = getelementptr inbounds %struct.cc_newreno_opts, %struct.cc_newreno_opts* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.newreno*, %struct.newreno** %8, align 8
  %57 = getelementptr inbounds %struct.newreno, %struct.newreno* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %60

58:                                               ; preds = %37
  %59 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %59, i32* %4, align 4
  br label %97

60:                                               ; preds = %52, %41
  br label %96

61:                                               ; preds = %17
  %62 = load %struct.cc_newreno_opts*, %struct.cc_newreno_opts** %9, align 8
  %63 = getelementptr inbounds %struct.cc_newreno_opts, %struct.cc_newreno_opts* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %91 [
    i32 131, label %65
    i32 130, label %78
  ]

65:                                               ; preds = %61
  %66 = load %struct.newreno*, %struct.newreno** %8, align 8
  %67 = icmp eq %struct.newreno* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @V_newreno_beta, align 4
  br label %74

70:                                               ; preds = %65
  %71 = load %struct.newreno*, %struct.newreno** %8, align 8
  %72 = getelementptr inbounds %struct.newreno, %struct.newreno* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi i32 [ %69, %68 ], [ %73, %70 ]
  %76 = load %struct.cc_newreno_opts*, %struct.cc_newreno_opts** %9, align 8
  %77 = getelementptr inbounds %struct.cc_newreno_opts, %struct.cc_newreno_opts* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %93

78:                                               ; preds = %61
  %79 = load %struct.newreno*, %struct.newreno** %8, align 8
  %80 = icmp eq %struct.newreno* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @V_newreno_beta_ecn, align 4
  br label %87

83:                                               ; preds = %78
  %84 = load %struct.newreno*, %struct.newreno** %8, align 8
  %85 = getelementptr inbounds %struct.newreno, %struct.newreno* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i32 [ %82, %81 ], [ %86, %83 ]
  %89 = load %struct.cc_newreno_opts*, %struct.cc_newreno_opts** %9, align 8
  %90 = getelementptr inbounds %struct.cc_newreno_opts, %struct.cc_newreno_opts* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %93

91:                                               ; preds = %61
  %92 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %92, i32* %4, align 4
  br label %97

93:                                               ; preds = %87, %74
  br label %96

94:                                               ; preds = %17
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %93, %60
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %94, %91, %58, %50, %34, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.newreno* @newreno_malloc(%struct.cc_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
