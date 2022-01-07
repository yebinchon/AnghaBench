; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i64, i32* }

@VM_PROT_RW = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@DPCPU_SETNAME = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VNET_SETNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @link_elf_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_elf_protect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VM_PROT_RW, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VM_PROT_READ, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %177, %19
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %180

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @DPCPU_SETNAME, align 4
  %51 = call i64 @strcmp(i32* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %177

54:                                               ; preds = %41, %31
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @trunc_page(i64 %62)
  store i64 %63, i64* %5, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %71, %79
  %81 = call i64 @round_page(i64 %80)
  store i64 %81, i64* %4, align 8
  %82 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SHF_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %54
  %95 = load i32, i32* @VM_PROT_WRITE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %54
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SHF_EXECINSTR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %98
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %3, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %119, i64 %120, i64 %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %124, i64 %125, i64 %126, i32 %127)
  %129 = load i64, i64* %5, align 8
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %4, align 8
  store i64 %130, i64* %3, align 8
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %8, align 4
  br label %176

132:                                              ; preds = %114
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %5, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* %4, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %141, i64 %142, i64 %143, i32 %144)
  %146 = load i64, i64* %5, align 8
  store i64 %146, i64* %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %175

150:                                              ; preds = %136, %132
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* %4, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* %5, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %155, i64 %156, i64 %157, i32 %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %3, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %160, i64 %161, i64 %162, i32 %165)
  %167 = load i64, i64* %3, align 8
  store i64 %167, i64* %6, align 8
  %168 = load i64, i64* %4, align 8
  store i64 %168, i64* %3, align 8
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %8, align 4
  br label %174

170:                                              ; preds = %150
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %170, %154
  br label %175

175:                                              ; preds = %174, %140
  br label %176

176:                                              ; preds = %175, %118
  br label %177

177:                                              ; preds = %176, %53
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %25

180:                                              ; preds = %25
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* %3, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %181, i64 %182, i64 %183, i32 %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = load i64, i64* %3, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %190, %194
  %196 = call i64 @round_page(i64 %195)
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @link_elf_protect_range(%struct.TYPE_8__* %186, i64 %187, i64 %196, i32 %197)
  ret void
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @link_elf_protect_range(%struct.TYPE_8__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
