; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_khelp.c_khelp_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_khelp.c_khelp_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.khelp_modevent_data = type { i8*, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (...)*, i32, i32 (...)*, i32*, i32, i32, i32 }

@HELPER_NEEDS_OSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Use KHELP_DECLARE_MOD_UMA() instead!\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HELPER_NAME_MAXLEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Khelp module \22%s\22 can't unload until its refcount drops from %d to 0.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khelp_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.khelp_modevent_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.khelp_modevent_data*
  store %struct.khelp_modevent_data* %10, %struct.khelp_modevent_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %163 [
    i32 131, label %12
    i32 130, label %103
    i32 129, label %103
    i32 128, label %103
  ]

12:                                               ; preds = %3
  %13 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %14 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HELPER_NEEDS_OSD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %12
  %22 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %23 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EDOOFUS, align 4
  store i32 %28, i32* %8, align 4
  br label %165

29:                                               ; preds = %21
  %30 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %31 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %34 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %37 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %40 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @uma_zcreate(i8* %32, i32 %35, i32 %38, i32 %41, i32* null, i32* null, i32 0, i32 0)
  %43 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %44 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32* %42, i32** %46, align 8
  %47 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %48 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %8, align 4
  br label %165

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55, %12
  %57 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %58 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %63 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @HELPER_NAME_MAXLEN, align 4
  %66 = call i32 @strlcpy(i32 %61, i8* %64, i32 %65)
  %67 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %68 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %71 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  store i32 %69, i32* %73, align 4
  %74 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %75 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %78 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  store i32 %76, i32* %80, align 8
  %81 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %82 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = icmp ne i32 (...)* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %56
  %88 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %89 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32 (...)*, i32 (...)** %91, align 8
  %93 = call i32 (...) %92()
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %87, %56
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %99 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = call i32 @khelp_register_helper(%struct.TYPE_3__* %100)
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %94
  br label %165

103:                                              ; preds = %3, %3, %3
  %104 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %105 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @khelp_deregister_helper(%struct.TYPE_3__* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %103
  %111 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %112 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HELPER_NEEDS_OSD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %121 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @uma_zdestroy(i32* %124)
  br label %126

126:                                              ; preds = %119, %110
  %127 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %128 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32 (...)*, i32 (...)** %130, align 8
  %132 = icmp ne i32 (...)* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %135 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32 (...)*, i32 (...)** %137, align 8
  %139 = call i32 (...) %138()
  br label %140

140:                                              ; preds = %133, %126
  br label %162

141:                                              ; preds = %103
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @ENOENT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %161

146:                                              ; preds = %141
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @EBUSY, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %152 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.khelp_modevent_data*, %struct.khelp_modevent_data** %7, align 8
  %155 = getelementptr inbounds %struct.khelp_modevent_data, %struct.khelp_modevent_data* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %153, i32 %158)
  br label %160

160:                                              ; preds = %150, %146
  br label %161

161:                                              ; preds = %160, %145
  br label %162

162:                                              ; preds = %161, %140
  br label %165

163:                                              ; preds = %3
  %164 = load i32, i32* @EINVAL, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %163, %162, %102, %53, %26
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @uma_zcreate(i8*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @khelp_register_helper(%struct.TYPE_3__*) #1

declare dso_local i32 @khelp_deregister_helper(%struct.TYPE_3__*) #1

declare dso_local i32 @uma_zdestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
