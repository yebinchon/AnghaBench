; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vimage/extr_vimage.c_getjail.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vimage/extr_vimage.c_getjail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jailparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"lastjid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vnet\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"host.hostname\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"host.domainname\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"children.cur\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"children.max\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"cpuset.id\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"allow.raw_sockets\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"allow.socket_af\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"allow.mount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jailparam*, i32, i32)* @getjail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getjail(%struct.jailparam* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jailparam*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x %struct.jailparam], align 16
  %8 = alloca i32, align 4
  store %struct.jailparam* %0, %struct.jailparam** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 0
  %10 = call i32 @bzero(%struct.jailparam* %9, i32 1664)
  %11 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %12 = call i32 @bzero(%struct.jailparam* %11, i32 52)
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %14
  %16 = call i32 @jailparam_init(%struct.jailparam* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %19
  %21 = call i32 @jailparam_import_raw(%struct.jailparam* %20, i32* %5, i32 4)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %23
  %25 = call i32 @jailparam_init(%struct.jailparam* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %28
  %30 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %31 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %30, i32 0, i32 0
  %32 = call i32 @jailparam_import_raw(%struct.jailparam* %29, i32* %31, i32 4)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %34
  %36 = call i32 @jailparam_init(%struct.jailparam* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %39
  %41 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %42 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %41, i32 0, i32 1
  %43 = call i32 @jailparam_import_raw(%struct.jailparam* %40, i32* %42, i32 4)
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %162

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %49
  %51 = call i32 @jailparam_init(%struct.jailparam* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %54
  %56 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %57 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %56, i32 0, i32 2
  %58 = call i32 @jailparam_import_raw(%struct.jailparam* %55, i32* %57, i32 4)
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %60
  %62 = call i32 @jailparam_init(%struct.jailparam* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %65
  %67 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %68 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %67, i32 0, i32 3
  %69 = call i32 @jailparam_import_raw(%struct.jailparam* %66, i32* %68, i32 4)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %71
  %73 = call i32 @jailparam_init(%struct.jailparam* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %76
  %78 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %79 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %78, i32 0, i32 4
  %80 = call i32 @jailparam_import_raw(%struct.jailparam* %77, i32* %79, i32 4)
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %82
  %84 = call i32 @jailparam_init(%struct.jailparam* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %87
  %89 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %90 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %89, i32 0, i32 5
  %91 = call i32 @jailparam_import_raw(%struct.jailparam* %88, i32* %90, i32 4)
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %47
  br label %162

95:                                               ; preds = %47
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %97
  %99 = call i32 @jailparam_init(%struct.jailparam* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %102
  %104 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %105 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %104, i32 0, i32 6
  %106 = call i32 @jailparam_import_raw(%struct.jailparam* %103, i32* %105, i32 4)
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %108
  %110 = call i32 @jailparam_init(%struct.jailparam* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %113
  %115 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %116 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %115, i32 0, i32 7
  %117 = call i32 @jailparam_import_raw(%struct.jailparam* %114, i32* %116, i32 4)
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %119
  %121 = call i32 @jailparam_init(%struct.jailparam* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %124
  %126 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %127 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %126, i32 0, i32 8
  %128 = call i32 @jailparam_import_raw(%struct.jailparam* %125, i32* %127, i32 4)
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %130
  %132 = call i32 @jailparam_init(%struct.jailparam* %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %135
  %137 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %138 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %137, i32 0, i32 9
  %139 = call i32 @jailparam_import_raw(%struct.jailparam* %136, i32* %138, i32 4)
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %141
  %143 = call i32 @jailparam_init(%struct.jailparam* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %146
  %148 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %149 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %148, i32 0, i32 10
  %150 = call i32 @jailparam_import_raw(%struct.jailparam* %147, i32* %149, i32 4)
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %152
  %154 = call i32 @jailparam_init(%struct.jailparam* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 %157
  %159 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %160 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %159, i32 0, i32 11
  %161 = call i32 @jailparam_import_raw(%struct.jailparam* %158, i32* %160, i32 4)
  br label %162

162:                                              ; preds = %95, %94, %46
  %163 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 0
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @jailparam_get(%struct.jailparam* %163, i32 %164, i32 0)
  %166 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %167 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %166, i32 0, i32 12
  store i32 %165, i32* %167, align 4
  %168 = getelementptr inbounds [32 x %struct.jailparam], [32 x %struct.jailparam]* %7, i64 0, i64 0
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @jailparam_free(%struct.jailparam* %168, i32 %169)
  %171 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %172 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 4
  ret i32 %173
}

declare dso_local i32 @bzero(%struct.jailparam*, i32) #1

declare dso_local i32 @jailparam_init(%struct.jailparam*, i8*) #1

declare dso_local i32 @jailparam_import_raw(%struct.jailparam*, i32*, i32) #1

declare dso_local i32 @jailparam_get(%struct.jailparam*, i32, i32) #1

declare dso_local i32 @jailparam_free(%struct.jailparam*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
